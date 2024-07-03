const express = require('express');
const app = express();
const port = 3000;

app.use(express.json());

// endpoint hitung gaji
app.post('/api/calculate-salary', (req, res) => {
  const { workingHours, hourlyRate } = req.body;

  // validasi input harus berupa angka
  if (isNaN(workingHours) || isNaN(hourlyRate)) {
    return res.status(400).json({ error: 'Input harus berupa angka' });
  }

  // gaji tanpa lembur
  let salary = workingHours * hourlyRate;

  // gaji jika lembur > 40 jam/minggu
  if (workingHours > 40) {
    const overtime = (workingHours - 40) * (hourlyRate * 1.5);
    salary += overtime;
    return res.json({ message: "Overtime Workers", salary: salary });
  }

  return res.json({ salary: salary });
});

app.listen(port, () => {
  console.log(`Server berjalan pada http://localhost:${port}`);
});
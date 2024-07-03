const featuredProduct = [
  {
    id: 1,
    name: "HP 62 Black Ink Cartridge",
    model: "(HPC2P04AE)",
    image: "public/hp-62-black-ink-cartridge.webp",
  },
  {
    id: 2,
    name: "HP 62 Black Ink Cartridge",
    model: "(HPC2P04AE)",
    image: "public/hp-62-black-ink-cartridge.webp",
  },
  {
    id: 3,
    name: "HP 62 Black Ink Cartridge",
    model: "(HPC2P04AE)",
    image: "public/hp-62-black-ink-cartridge.webp",
  },
  {
    id: 4,
    name: "HP 62 Black Ink Cartridge",
    model: "(HPC2P04AE)",
    image: "public/hp-62-black-ink-cartridge.webp",
  },
  {
    id: 5,
    name: "HP 62 Black Ink Cartridge",
    model: "(HPC2P04AE)",
    image: "public/hp-62-black-ink-cartridge.webp",
  },
];

const featuredProductCard = document.getElementById("swiper-wrapper");

featuredProductCard.innerHTML = `${featuredProduct
  .map(
    product => `
    <div class="swiper-slide"><div class="card">
            <img src=${product.image} alt=${product.name}>
            <div class="body-card">
                <h4>${product.name}</h4>
                <p>${product.model}</p>
                <div class="footer-card">
                    <p class="price">$9.49</p>
                    <button>ADD TO CART</button>
                </div>
            </div>
        </div></div>`
  )
  .join("")}`;

document.addEventListener("DOMContentLoaded", function () {
  const swiper = new Swiper(".swiper-container", {
        slidesPerView: "auto",
        spaceBetween: 20,
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
        breakpoints: {
            768: {
                slidesPerView: 3,
                spaceBetween: 30,
            },
            1024: {
                slidesPerView: 3,
                spaceBetween: 40,
            },
        },
    });
});

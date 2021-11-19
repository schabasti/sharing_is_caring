import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr("#flatpickr", {
    altInput: true,
    inline: true
  });
}

export { initFlatpickr }

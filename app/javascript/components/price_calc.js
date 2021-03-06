
const priceCalc = () => {


  const date_from = document.getElementById("booking_start_date")

  const date_to = document.getElementById("booking_end_date")

  const total_price = document.getElementById("total-price")
  const item_price = document.getElementById("item-price")

  function parseDate(str) {
      var mdy = str.split('-');
      return new Date(mdy[2], mdy[0]-1, mdy[1]);
  }

  function datediff(date_from, date_to) {
      // Take the difference between the dates and divide by milliseconds per day.
      // Round to nearest whole number to deal with DST.
      var result = Math.round((date_to-date_from)/(1000*60*60*24*365))

      return result > 0 ? result : 1;
  }

  function calculateTotalPrice(event) {
    const rent_days = datediff(parseDate(date_from.value), parseDate(date_to.value))
    total_price.innerText = Math.round(rent_days * item_price.dataset.price)

  }

  if (date_from && date_to) {
    date_from.addEventListener("change", calculateTotalPrice)
    date_to.addEventListener("change", calculateTotalPrice)
  }
}

export { priceCalc }

/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./dist/*.{html,js}"],
  theme: {
    extend: {
      colors: {
        favorite: '#22d3ee',
        seat:'#5bfc60',
      }
    },
  },
  plugins: [],
}


/** @type {import("snowpack").SnowpackUserConfig } */
export default {
  mount: {
    public: { url: "/", static: true },
    src: { url: "/dist" },
  },

  exclude: ["**/*.{res,resi,re,rei,ml,mli}"],
  plugins: [],
  packageOptions: {
    /* ... */
  },
  devOptions: {
    /* ... */
  },
  buildOptions: {
    /* ... */
  },
  alias: {
    /* ... */
  },
  optimize: {
    bundle: true,
    minify: false,
    target: "es2018",
  },
};

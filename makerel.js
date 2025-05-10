const nm = Deno.args[0];
const fn = nm + ".rel";
const s = `-im ${nm}
${nm}.o
`;
try {
  await Deno.readTextFile(fn);
} catch (e) {
  await Deno.writeTextFile(fn, s);
}


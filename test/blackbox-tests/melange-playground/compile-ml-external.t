  $ cat > input.js <<EOF
  > require(process.env.DUNE_SOURCEROOT + '/_build/default/bin/jsoo_main.bc.js');
  > require(process.env.DUNE_SOURCEROOT + '/_build/default/bin/melange-cmijs.js');
  > console.log(ocaml.compileML("external f : int = \"\""));
  > EOF

  $ node input.js
  File "_none_", line 1, characters 0-21:
  Alert fragile: f : the external name is inferred from val name is unsafe from refactoring when changing value name
  {
    js_code: '// Generated by Melange\n' +
      "/* This output is empty. Its source's type definitions, externals and/or unused code got optimized away. */\n",
    warnings: [],
    type_hints: [
      { start: [Object], end: [Object], kind: 'core_type', hint: 'int' }
    ]
  }

initialization
initialize
  | sampleCell width height n |
  super initialize.
  n := self cellsPerSide.
  sampleCell := LOCell new.
  width := sampleCell width.
  height := sampleCell height.
  self bounds: (5@5 extent: ((width*n) @(height*n)) + (2 * self borderWidth)).
  cells := Matrix new: n tabulate: [ :i :j | self newCellAt: i at: j ].

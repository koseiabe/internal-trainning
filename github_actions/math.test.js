const add = require('./math');

test('1 + 2 が 3 になること', () => {
  expect(add(1, 2)).toBe(3);
});

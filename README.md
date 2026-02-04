# poly.hs
This Haskell script converts any denary integer into a polyonomial where `x` is a specified base.

For example:

```
>>> poly 10 42069
p(x = 10) = 4x^4 + 2x^3 + 6x + 9

>>> poly 2 23
p(x = 2) = x^4 + x^2 + x + 1

>>> poly 16 923124924002
p(x = 16) = 13x^9 + 6x^8 + 14x^7 + 14x^6 + 8x^5 + 8x^4 + 7x^3 + 14x^2 + 6x + 2
```

I was motivated to create this after learning about this way of representing place value from one of my university lectures. It is quite cool indeed.

# Barnsley fern
**Note:** a couple of small pieces of text in the README are from [wikipedia](https://en.wikipedia.org/wiki/Barnsley_fern).

Barnsley's fern is a procedural but quite predictable fern.

## The algorithm
You start with a dot. Then you randomly apply a transformation to that dot. You have a bunch of options:

For the stem:

| Basis vector x | Basis vector y | Origin |
| -------------- | -------------- | ------ |
| 0              | 0              | 0      |
| 0              | 0.16           | 0      |

Probability: 2%

For the successively smaller leaflets:

| Basis vector x | Basis vector y | Origin |
| -------------- | -------------- | ------ |
| 0.85           | 0.04           | 0      |
| -0.04          | 0.85           | 1.6    |

Probability: 84%

For the largest left-hand leaflet:

| Basis vector x | Basis vector y | Origin |
| -------------- | -------------- | ------ |
| 0.2            | -0.26          | 0      |
| 0.23           | 0.22           | 1.2    |

Probability: 7%

For the largest right-hand leaflet:

| Basis vector x | Basis vector y | Origin |
| -------------- | -------------- | ------ |
| -0.15          | 0.28           | 0      |
| 0.26           | 0.24           | 0.44   |

Probability: 7%

When you've transformed the dot, you move to there. Once you repeat this a lot, and every time you repeat you put a mark where you  went, the shape you'll trace is a fern! Isn't that cool!?

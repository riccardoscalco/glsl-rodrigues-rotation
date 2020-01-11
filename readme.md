# glsl-rodrigues-rotation

Glsl implementation of the Rodrigues's rotation formula. An efficient algorithm for rotating a vector in space, given an axis and angle of rotation (https://en.wikipedia.org/wiki/Rodrigues%27_rotation_formula).

## Install

```sh
npm install glsl-rodrigues-rotation
```

## Usage

```glsl
#pragma glslify: rotate = require(glsl-rodrigues-rotation)

vec3 vector = vec3(1., 0., 0.);
vec3 axis = vec3(0., 1., 0.);
float angle = 3.141592653589793 / 2.;
vec3 rotatedVector = rotate(vector, axis, angle); // return vec3(0., 0., -1.)
```

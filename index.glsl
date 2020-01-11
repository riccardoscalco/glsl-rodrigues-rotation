/*
	Rodrigues's rotation formula (https://en.wikipedia.org/wiki/Rodrigues%27_rotation_formula).
	Rotate vector v around the axis n by the angle a according to the right hand rule.
	Vector n is expected to be normalized.
	Angle a is expressed in radiants.
*/
vec3 rotate (vec3 v, vec3 n, float a) {
	return v * cos(a) + cross(n, v) * sin(a) + n * dot(n, v) * (1. - cos(a));
}

#pragma glslify: export(rotate)

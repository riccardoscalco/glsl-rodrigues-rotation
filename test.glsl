precision mediump float;

#pragma glslify: rotate = require(./)

float PI = 3.14159;

bool test_1() {
	return rotate(vec3(1., 0., 0.), vec3(1., 0., 0.), float(0)) == vec3(1., 0., 0.);
}

bool test_2() {
	return rotate(vec3(1., 0., 0.), vec3(0., 1., 0.), float(0)) == vec3(1., 0., 0.);
}

bool test_3() {
	return length(rotate(vec3(1., 0., 0.), vec3(0., 1., 0.), float(90. * PI / 180.)) - vec3(0., 0., -1.)) < 0.001;
}

bool test_4() {
	return length(rotate(vec3(0., 1., 0.), vec3(1., 0., 0.), float(90. * PI / 180.)) - vec3(0., 0., 1.)) < 0.001;
}

bool test_5() {
	return length(rotate(vec3(0., 0., 1.), vec3(1., 0., 0.), float(90. * PI / 180.)) - vec3(0., -1., 0.)) < 0.001;
}

bool test_6() {
	return length(rotate(normalize(vec3(1., 0., 1.)), vec3(0., 1., 0.), float(90. * PI / 180.)) - normalize(vec3(1., 0., -1.))) < 0.001;
}

bool test_7() {
	return length(rotate(normalize(vec3(1., 0., 1.)), vec3(0., 1., 0.), float(45. * PI / 180.)) - normalize(vec3(1., 0., 0.))) < 0.001;
}

bool test_8() {
	return length(rotate(normalize(vec3(1., 0., 1.)), vec3(1., 0., 0.), float(90. * PI / 180.)) - normalize(vec3(1., -1., 0.))) < 0.001;
}

bool test_9() {
	return length(rotate(normalize(vec3(1., 0., 1.)), normalize(vec3(-1., 0., 1.)), float(45. * PI / 180.)) - normalize(vec3(0.5000003316986141, 0.7071063120935575, 0.5000003316986141))) < 0.001;
}

bool test_10() {
	return length(rotate(normalize(vec3(3., -2., 1.)), normalize(vec3(-1., 3., 5.)), float(15.7 * PI / 180.)) - normalize(vec3(0.9319283081810682, -0.3224075048518415, 0.16602117101737898))) < 0.001;
}
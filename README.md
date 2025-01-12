# Buildroot external layer example

This is an example repository showing a Buildroot external layer.
The layer contains one package, `curl-example`, that demonstrates an example of dependency.

This layer is assumed to be inside the Buildroot root.
In addition, Buildroot needs to be let know about this layer with `BR2_EXTERNAL`.
Also, we need to define the source override for `curl-example` using `BR2_PACKAGE_OVERRIDE_FILE` and setting that to the `buildroot_override` file in the root of this repository 

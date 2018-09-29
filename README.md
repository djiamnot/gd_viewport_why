# Tell me why

In this example, we use a Viewport to read a 2D label and we map the resulting texture on a MeshInstance.
This is saved as a separate scene. Then we instantiate several copies of this scene and we fetch the reference
to this instance. In the rendered version, all instances seem to have the same ID, yet the `print` statement
shows us something else.

Any pointers to what I'm doing wrong?

Mandatory screenshot:

![screenshot](screenshot.png)

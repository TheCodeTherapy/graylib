module examples

go 1.21

replace github.com/TheCodeTherapy/graylib/raylib => ../raylib

replace github.com/TheCodeTherapy/graylib/raygui => ../raygui

replace github.com/TheCodeTherapy/graylib/easings => ../easings

replace github.com/TheCodeTherapy/graylib/physics => ../physics

require (
	github.com/TheCodeTherapy/graylib/easings v0.0.0-00010101000000-000000000000
	github.com/TheCodeTherapy/graylib/physics v0.0.0-00010101000000-000000000000
	github.com/TheCodeTherapy/graylib/raygui v0.0.0-00010101000000-000000000000
	github.com/TheCodeTherapy/graylib/raylib v0.0.0-20231118125650-a1c890e8cbfc
	github.com/jakecoffman/cp v1.2.1
	github.com/neguse/go-box2d-lite v0.0.0-20170921151050-5d8ed9b7272b
)

require (
	github.com/ebitengine/purego v0.7.1 // indirect
	golang.org/x/exp v0.0.0-20240506185415-9bf2ced13842 // indirect
	golang.org/x/sys v0.20.0 // indirect
)

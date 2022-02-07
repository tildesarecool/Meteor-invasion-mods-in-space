// GameMaker Language Preview (Read-Only)

// Assign Variable
image_alpha = image_alpha - 0.01;


// If Variable
if(image_alpha <= 0)
{
	// Destroy Instance
	instance_destroy();
}
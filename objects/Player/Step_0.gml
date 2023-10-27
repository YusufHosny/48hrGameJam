moveUp =  keyboard_check(vk_up) || keyboard_check(ord("W"));
moveDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
moveRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
moveLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));

inputDirection = point_direction(0,0, moveRight-moveLeft,  moveDown-moveUp);
inputMagnitude = (moveUp - moveDown != 0) || (moveLeft - moveRight != 0);

hSpeed = lengthdir_x(inputMagnitude*speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude*speedWalk, inputDirection);

x +=hSpeed;
y +=vSpeed;
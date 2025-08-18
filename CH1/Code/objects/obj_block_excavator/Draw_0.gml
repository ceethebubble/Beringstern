if pickUpDirt
{
	draw_sprite_ext(spr_block_excavator_dirt,0,xArm-xClaw,yArm-yClaw,0.21,0.21,clawRotation,image_blend,1)
}

draw_sprite_ext(spr_block_excavator_arm,0,xArm-170,yArm+174,1,1,excavatorRotation,image_blend,1)
draw_sprite_ext(spr_block_excavator_claw,0,xArm-xClaw,yArm-yClaw,1,1,clawRotation,image_blend,1)
draw_sprite_ext(spr_block_excavator_body,image_index,x,y,1,1,0,image_blend,1);
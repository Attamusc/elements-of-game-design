/// @description 

var dialog = instance_create_layer(0, 0, "Instances", obj_dialogue_box);

dialog.portrait = "dowser";

dialog.message[0] = "Yoooooooo!";
dialog.message[1] = "This presentation is sooooooooo boring!";
dialog.message[2] = "Nobody wants to hear this garbage! And what's with that crazy font!?!";
dialog.message[3] = "I'm taking the rest of this to spare these other losers from your dumb ideas.";
dialog.message[4] = "If you're so smart why don't you come get 'em back from me.";
dialog.message[5] = "Smell ya later jerks!!";

audio_play_sound(snd_bonetrousle, 10, 0);
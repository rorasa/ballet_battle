--[[
Ballet-battle — Story resources

Version: 0.0.1
Last update: 26.06.14
Programmer: Wattanit Hotrakool (@rorasa)
            CannonLight Games
-----------------------------------------------------------
LÖVE version: 0.9.0
]]

function loadPage(pageNumber)
	if pageNumber == 1 then
		Page = page1()
	elseif pageNumber == 2 then
		Page = page2()
	elseif pageNumber == 3 then
		Page = page3()
	elseif pageNumber == 4 then
		Page = page4()
	elseif pageNumber == 5 then
		Page = page5()
	elseif pageNumber == 6 then
		Page = page6()
	elseif pageNumber == 7 then
		Page = page7()
	elseif pageNumber == 8 then
		Page = page8()
	elseif pageNumber == 9 then
		Page = page9()
	elseif pageNumber == 10 then
		Page = page10()
	elseif pageNumber == 11 then
		Page = page11()
	elseif pageNumber == 12 then
		Page = page12()
	elseif pageNumber == 13 then
		Page = page13()
	elseif pageNumber == 14 then
		Page = page14()
	elseif pageNumber == 15 then
		Page = page15()
	elseif pageNumber == 16 then
		Page = page16()
	end
	return Page
end

function page1()
	Page = {}
	Page.order = {
		{"scene","black_screen"},
		{"say",Game_Params.PlayerName,"I am a girl."},
		{"say",Game_Params.PlayerName,"I was your ordinary girl, those you can find on a street."},
		{"say",Game_Params.PlayerName,"I was a girl with no passion nor goals in my life."},
		{"say",Game_Params.PlayerName,"Until one day..."},
		{"scene","christinas_dance"},
		{"say",Game_Params.PlayerName,"I browsed on my television, looking for something to watch."},
		{"say",Game_Params.PlayerName,"And then I saw her."},
		{"say",Game_Params.PlayerName,"Her name is Christina. They say she is a newborn star of the ballet world."},
		{"say",Game_Params.PlayerName,"The only thing I knew was that I was seeing an angel."},
		{"say",Game_Params.PlayerName,"The most beautiful angel I've ever dreamt of."},
		{"scene","black_screen"},
		{"say",Game_Params.PlayerName,"I realised I want to be just like her."},
		{"say",Game_Params.PlayerName,"Not just another ballerina, but ..."},
		{"scene","game_logo_screen"},
		{"say",Game_Params.PlayerName,"to be The Ballerina that I saw."},
		{"goto",2}
	}
	return Page
end

function page2()
	Page = {}
	Page.order = {
		{"scene","park"},
		{"character","clara_1"},
		{"say",Game_Params.PlayerName,"I really want to do ballet."},
		{"say",Game_Params.PlayerName,"The real problem is there is no way I can find money to join any ballet schools."},
		{"say",Game_Params.PlayerName,"Why do they have to cost so much?"},
		{"say",Game_Params.PlayerName,"All the equipments I looked up last night also cost a fortune."},
		{"character","clara_2"},
		{"say",Game_Params.PlayerName,"I guess right now there is no better way than to try it myself."},
		{"say",Game_Params.PlayerName,"I'm even talking to myself anyway!"},
		{"scene","black_screen"},
		{"character","none"},
		{"say",Game_Params.PlayerName,"Let's see..."},
		{"say",Game_Params.PlayerName,"\"To dance is to synchronise your step with the music."},
		{"say",Game_Params.PlayerName,"\"There are 4 main steps you should be aware of."},
		{"scene","black_screen"},
		{"say",Game_Params.PlayerName,"\"Step A (Press Z),"},
		{"scene","black_screen"},
		{"say",Game_Params.PlayerName,"\"Step B (Press X),"},
		{"scene","black_screen"},
		{"say",Game_Params.PlayerName,"\"Step C (Press C),"},
		{"scene","black_screen"},
		{"say",Game_Params.PlayerName,"\"and Step D (Press V)."},
		{"scene","black_screen"},
		{"say",Game_Params.PlayerName,"\"all you need to do is to do the right step at the right time."},
		{"say",Game_Params.PlayerName,"(Press the correct keys when the step \"Stars\" reach the target line.)"},
		{"scene","black_screen"},
		{"say",Game_Params.PlayerName,"\"The most important thing to keep in mind is the performance bar."},
		{"say",Game_Params.PlayerName,"\"If you do the right steps at the right time, audiences will be happy..."},
		{"say",Game_Params.PlayerName,"\"and your performance bar will be up."},
		{"say",Game_Params.PlayerName,"\"However, if you got it all wrong, the performance bar will fall."},
		{"say",Game_Params.PlayerName,"\"If the bar's got empty, you might be forced to step down from your show, so beware!\""},
		{"scene","park"},
		{"character","clara_1"},
		{"say",Game_Params.PlayerName,"What an encouraging guide it is!"},
		{"character","clara_2"},
		{"say",Game_Params.PlayerName,"Anyway let's try dancing!"},
		--{"dance", 1}
		{"goto",3}
	}
	return Page
end

function page3()
	Page = {}
	Page.order = {
		{"scene","park"},
		{"character","clara_1"},
		{"say",Game_Params.PlayerName,"Whoosh"},
		{"say",Game_Params.PlayerName,"That's a lot HARDER than I imagined!"},
		{"say",Game_Params.PlayerName,"I hope I could get better at this after several practices, though."},
		--{"dance", 2}
		{"scene","black_screen"},
		{"character","none"},
		{"say"," ","Few months later"},
		{"scene","park"},
		{"character","clara_1"},
		{"say",Game_Params.PlayerName,"I was at this for few months now, I don't think I'm getting any better at all."},
		{"say",Game_Params.PlayerName,"Should I stop dreaming about this, find a job,..."},
		{"say",Game_Params.PlayerName,"and get some money for an actual ballet school?"},
		{"say",Game_Params.PlayerName,"But who knows how long it going to take?"},
		{"say",Game_Params.PlayerName,"Or maybe I just aren't born to be a ballerina?"},
		{"character","none"},
		{"say","Mel","Don't think like that!"},
		{"character","clara_1"},
		{"say",Game_Params.PlayerName,"Who are you?!"},
		{"character","mel_1"},
		{"say","Mel","I've been watching over you for some times now."},
		{"say","Mel","I've seen you try to practice ballet on your own."},
		{"say","Mel","You seem to be serious about it. Am I correct?"},
		{"say","Mel","I have seen you doing this everyday."},
		{"character","clara_2"},
		{"say",Game_Params.PlayerName,"I want to be a ballerina."},
		{"say",Game_Params.PlayerName,"It's the first thing in my life I feel I want to do."},
		{"say",Game_Params.PlayerName,"I thought I must be able to reach my dream for sure."},
		{"character","clara_1"},
		{"say",Game_Params.PlayerName,"But I just don't know it anymore."},
		{"character","mel_1"},
		{"say","Mel","You are doing it good, and you do have a great spirit."},
		{"say","Mel","I am sure you will one day reach you dream."},
		{"say","Mel","Do you mind to tell me what is your dream anyway?"},
		{"character","clara_2"},
		{"say",Game_Params.PlayerName,"I hope that one day I can be an angel, whom all the eyes catch upon."},
		{"character","mel_1"},
		{"say","Mel","My advice for you is to find a proper school for training."},
		{"say","Mel","It is very important to have your basics right."},
		{"say","Mel","Actually, I own a school. If you don't mind..."},
		{"character","clara_1"},
		{"say",Game_Params.PlayerName,"But I have no money!"},
		{"character","mel_1"},
		{"say","Mel","I see, so that's the problem..."},
		{"say","Mel","Can you show me your dance again?"},
		{"character","clara_2"},
		{"say",Game_Params.PlayerName,"Of course!"},
		--{"dance", 3}
		{"character","mel_1"},
		{"say","Mel","Maybe I can put you in a special program."},
		{"say","Mel","It is a \"special squad\" specially trained for competition."},
		{"say","Mel","Your course is free as long as you can still make fame for us."},
		{"say","Mel","How is that sounds to you?"},
		{"character","clara_2"},
		{"say",Game_Params.PlayerName,"That was great! Are you sure about this? I'm totally a newbie. "},
		{"character","mel_1"},
		{"say","Mel","Of course I am!"},
		{"say","Mel","My school is just on the next corner."},
		{"say","Mel","Come to me tomorrow alright?"},
		{"scene","black_screen"},
		{"character","none"},
		{"say",Game_Params.PlayerName,"And so my new life began."},
		{"goto",4}
	}
	
	return Page
end

function page4()
	Page = {}
	Page.order = {
		{"scene","mel_school_outside"},
		{"character","none"},
		{"say",Game_Params.PlayerName,"So I'd been to Mel's school."},
		{"say",Game_Params.PlayerName,"It was just a small school in my small town."},
		{"say",Game_Params.PlayerName,"It actually didn't look like a ballet school at all."},
		{"say",Game_Params.PlayerName,"But there I was."},
		{"scene","mel_school_inside"},
		{"character","mel_1"},
		{"say","Mel","Good morning. It's so good that you can come."},
		{"say","Mel","Now that you've joined us, let's start the training right away!"},
		{"character","clara_3"},
		{"say",Game_Params.PlayerName,"Where are the others?"},
		{"character","mel_1"},
		{"say","Mel","Well, there are several other students."},
		{"say","Mel","We actually have many students."},
		{"say","Mel","But none of them are older than 8, I'm afraid."},
		{"character","clara_3"},
		{"say",Game_Params.PlayerName,"So you only teach children?"},
		{"character","mel_1"},
		{"say","Mel","Well, ballet is something you should learn as a child."},
		{"say","Mel","But I sense something special about you."},
		{"say","Mel","That's why I created this \"special squad\" just for you."},
		{"say","Mel","There is actually no one else but you."},
		{"say","Mel","So let's get started!"},
		{"say","Mel","Let's do the basic first."},
		{"say","Mel","We'll first look at the basic step A and step D."},
		{"say","Mel","Try this song."},
		--{"dance", 4}
		{"goto",5}
	}
	return Page
end

function page5()
	Page = {}
	Page.order = {
		{"scene","mel_school_inside"},
		{"character","mel_1"},
		{"say","Mel","That's great!"},
		{"say","Mel","I knew I was right about you."},
		{"say","Mel","How do you feel?"},
		{"character","clara_3"},
		{"say",Game_Params.PlayerName,"I've never realised that just step A and D could be this hard."},
		{"character","mel_1"},
		{"say","Mel","Yes, basic steps can get very complex from time to time."},
		{"say","Mel","What do you say if we proceed the step B and step C training?"},
		{"character","clara_4"},
		{"say",Game_Params.PlayerName,"Bring it on!"},
		--{"dance", 5}
		{"goto",7}
	}
	return Page
end

function page6()
	Page = {}
	Page.order = {
	}
	return Page
end

function page7()
	Page = {}
	Page.order = {
		{"scene","mel_school_inside"},
		{"character","mel_1"},
		{"say","Mel","You are really something special."},
		{"say","Mel","Just a reminder, always practice these basics, ok?"},
		{"say","Mel","They are important."},
		{"say","Mel","Now we can move on to a more interesting thing."},
		{"say","Mel","Let's dance for real."},
		{"say","Mel","I believe you will notice all the differences from the time before..."},
		{"say","Mel","now that you have practiced the basics."},
		{"character","clara_3"},
		{"say",Game_Params.PlayerName,"You think so?"},
		{"character","mel_1"},
		{"say","Mel","Of course! Trust me."},
		{"say","Mel","Now let's start."},
		--{"dance", 6}
		{"goto",9}
	}
	return Page
end

function page8()
	Page = {}
	Page.order = {
	}
	return Page
end

function page9()
	Page = {}
	Page.order = {
		{"scene","mel_school_inside"},
		{"character","mel_1"},
		{"say","Mel","How do you feel?"},
		{"say","Mel","Any differences?"},
		{"character","clara_4"},
		{"say",Game_Params.PlayerName,"I know one thing."},
		{"say",Game_Params.PlayerName,"I could never have done this if I were still in the park."},
		{"say",Game_Params.PlayerName,"You are great, Mel."},
		{"character","mel_1"},
		{"say","Mel","No, you are great."},
		{"say","Mel","My hope lies on you."},
		
		{"scene","mel_school_outside"},
		{"character","none"},
		{"say",Game_Params.PlayerName,"Months passed by while I practice my ballet everyday."},
		{"say",Game_Params.PlayerName,"Everything was looking good."},
		{"say",Game_Params.PlayerName,"I thought I might be satisfied with the life as it was."},
		
		{"scene","mel_school_inside"},
		{"character","mel_1"},
		{"say","Mel","You know we've got an invitation?"},
		{"character","clara_3"},
		{"say",Game_Params.PlayerName,"Invitation for what?"},
		{"character","mel_1"},
		{"say","Mel","There'll be a competition in our area very soon."},
		{"say","Mel","It's a part of the campaign set up by the Christina's Ballet School."},
		{"say","Mel","The winner from each area will be enrolled as a guest student of the Christina's School."},
		{"character","clara_3"},
		{"say",Game_Params.PlayerName,"What?"},
		{"character","mel_1"},
		{"say","Mel","This is a big chance for you, and for all of us."},
		{"say","Mel","If you can win this, you will have a chance to see the bigger world..."},
		{"say","Mel",", learn from the greater teacher."},
		{"say","Mel","It's also our chance to put our school's name forward for public to hear."},
		{"say","Mel","Will you do this for us?"},
		{"character","clara_4"},
		{"say",Game_Params.PlayerName,"( I'll get a chance to learn from that Christina!? I must take this.)"},
		{"say",Game_Params.PlayerName,"I'll do my best. For our school!"},
		
		{"scene","christina_school_outside"},
		{"character","clara_2"},
		{"say",Game_Params.PlayerName,"So this is the Christina's Ballet School?"},
		{"say",Game_Params.PlayerName,"It's so beautiful."},
		{"character","mel_1"},
		{"say","Mel","Well, I'm sorry my school looks like a warehouse."},
		{"character","clara_1"},
		{"say",Game_Params.PlayerName,"That's not what I meant. I just said this place looks good."},
		{"character","mel_1"},
		{"say","Mel","This is the most prestigious school in our country now."},
		{"say","Mel","If you can win it today, you can be its member."},
		{"say","Mel","Let's get going then."},
		
		{"scene","christina_school_inside"},
		{"character","lawrance_1"},
		{"say","Lawrance","Welcome to the Christina School of Dance and Ballet."},
		{"say","Lawrance","My name is Lawrance"},		
		{"say","Lawrance","We're all here today to witness the greatest young talent from your area."},
		{"say","Lawrance","The competition is very straightforward. Each of you will be called out in turn."},
		{"say","Lawrance","Dance for all of us to see, impress our judges,..."},
		{"say","Lawrance","and your place in our school is guaranteed."},
		{"say","Lawrance","All of you do your best!"},
		{"character","clara_3"},
		{"say",Game_Params.PlayerName,"I wonder if I could win this. Everyone looks great."},
		{"say","Lawrance","Next, from Mel's School of Ballet, "..Game_Params.PlayerName.."."},
		{"character","clara_4"},
		{"say",Game_Params.PlayerName,"It's my turn now! Mel, I'll do my best."},
		--{"dance", 7}
		{"goto",10}
	}
	return Page
end

function page10()
	Page = {}
	Page.order = {
		{"scene","christina_school_outside"},
		{"character","none"},
		{"say",Game_Params.PlayerName,"I still couldn't believe it was real."},
		{"say",Game_Params.PlayerName,"That day when they announced the winner."},
		{"scene","black_screen"},
		{"say","Lawrance","And the winner of the region's competition is..."},
		{"say","Lawrance","The representative from Mel's School of Ballet..."},
		{"say","Lawrance","Miss "..Game_Params.PlayerName.."!"},
		{"scene","christina_school_outside"},
		{"say",Game_Params.PlayerName,"And here I am, "},
		{"say",Game_Params.PlayerName,"on my first day as a student of the famous Christina's Ballet School."},
		
		{"scene","christina_school_inside"},
		{"character","clara_4"},
		{"say",Game_Params.PlayerName,"This place has so many students."},
		{"say",Game_Params.PlayerName,"I would never be able to enroll and pay for myself without this program."},
		{"say",Game_Params.PlayerName,"Hey, isn't that."},
		{"character","christina_3"},
		{"say","Christina","Welcome everyone."},
		{"say","Christina","Each of you are the best in your area, whom I hope to be the future of our profession."},
		{"say","Christina","Which is why I started this program, "},
		{"say","Christina","to gather all young talents to this place to learn together."},
		{"say","Christina","Now as we are fellow ballet dancers, "},
		{"say","Christina","there should be nothing better than to dance together to know each other."},
		{"character","christina_4"},
		{"say","Christina","Let it begins."},
		--{"dance", 8}
		{"goto",11}
	}
	return Page
end

function page11()
	Page = {}
	Page.order = {
		{"scene","christina_school_inside"},
		{"character","christina_4"},
		{"say","Christina","That's good."},
		{"say","Christina","Where are you from?"},
		{"character","clara_4"},
		{"say",Game_Params.PlayerName,"I come from Mel's Ballet School."},
		{"character","christina_3"},
		{"say","Christina","Mel? I know her."},
		{"say","Christina","It's a long time ago though, before I became a star."},
		{"character","clara_4"},
		{"say",Game_Params.PlayerName,"I can't believe I'm really talking to you, Christina."},
		{"say",Game_Params.PlayerName,"I'm your big fan."},
		{"say",Game_Params.PlayerName,"I'm always looking forward to you."},
		{"character","christina_3"},
		{"say","Christina","Oh, thank you."},
		{"character","clara_4"},
		{"say",Game_Params.PlayerName,"I started ballet since I saw your performance in the Red Hall."},
		{"character","christina_3"},
		{"say","Christina","What? That's must be very recently."},
		{"say","Christina","Since when did you start your ballet?"},
		{"character","clara_4"},
		{"say",Game_Params.PlayerName,"Just few months back."},
		{"say",Game_Params.PlayerName,"I first started off as a self-taught dancer until Mel met me."},
		{"character","christina_3"},
		{"say","Christina","You cann't be serious? There is no way such a thing could happen."},
		{"say","Christina","Why'd you lied to me?"},
		{"character","clara_3"},
		{"say",Game_Params.PlayerName,"What?"},
		{"character","christina_3"},
		{"say","Christina","Are you trying to make fun of me or something?"},
		{"say","Christina","Even I spent 10 years in practicing and learning before I reached here."},
		{"say","Christina","There is no way you can dance like that in few months!"},
		{"character","clara_3"},
		{"say",Game_Params.PlayerName,"(What's wrong with her?)"},
		{"goto",13}
	}
	return Page
end

function page12()
	Page = {}
	Page.order = {
	}
	return Page
end

function page13()
	Page = {}
	Page.order = {
		{"scene","christina_school_outside"},
		{"character","none"},
		{"say",Game_Params.PlayerName,"3 months passed."},
		{"say",Game_Params.PlayerName,"Christina never spoke with me again after that day."},
		{"scene","christina_school_inside"},
		{"character","lawrance_1"},
		{"say","Lawrance","Good evening, ladies and gentlemen!"},
		{"say","Lawrance","Tonight is the end of our young talents' 3 months experience..."},
		{"say","Lawrance","as guest students here at Christina's School of Dance and Ballet."},
		{"say","Lawrance","The show tonight will be the same as that 3 months ago."},
		{"say","Lawrance","Each of them will perform their solo to impress our judges."},
		{"say","Lawrance","Those who are qualified will be enrolled as full students here,"},
		{"say","Lawrance","with our sponsorship of course."},
		{"say","Lawrance","Those who are not will bring back their wonderful experience with us to their home."},
		{"say","Lawrance","So without further ado, ladies and gentlemen, enjoy the show."},
		
		{"scene","christina_school_outside"},
		{"character","mel_2"},
		{"say","Mel","Hi, are you ready for today?"},
		{"character","clara_2"},
		{"say",Game_Params.PlayerName,"Mel! You come to watch me?"},
		{"character","mel_2"},
		{"say","Mel","Of course, you are my \"special squad\", aren't you?"},
		{"character","clara_2"},
		{"say",Game_Params.PlayerName,"I'm going to do my best as usual, Mel."},
		{"say",Game_Params.PlayerName,"I feel like I can do just anything today."},
		{"character","mel_2"},
		{"say","Mel","That's a good spirit."},
		{"say","Mel","Good luck then."},
		{"character","clara_1"},
		{"say",Game_Params.PlayerName,"Thank you, Mel."},
		
		{"scene","christina_school_inside"},
		{"character","lawrance_1"},
		{"say","Lawrance","Please welcome the next young talent originally from Mel's School of Ballet,"},
		{"say","Lawrance","Miss "..Game_Params.PlayerName.."!"},
		--{"dance", 9}
		{"goto",14}
	}
	return Page
end

function page14()
	Page = {}
	Page.order = {
		{"scene","black_screen"},
		{"character","none"},
		{"say",Game_Params.PlayerName,"The end of the last 3 months was a dream."},
		{"say",Game_Params.PlayerName,"It was as unbelievable as the time I won."},
		{"say","Lawrance","Miss "..Game_Params.PlayerName..", you pass!"},
		{"say","Lawrance","Congratula..."},
		{"say","Christina","No, you don't."},
		{"say","Christina","I'm so sorry,"},
		{"say","Christina","but our school is here for those who wish put their hard works to fruition."},
		{"say","Christina","It's not a place for someone who lies to people..."},
		{"say","Christina","that she can do what takes others years to do in just few months."},
		{"say",Game_Params.PlayerName,"She truly believed that I was a fraud."},
		{"say",Game_Params.PlayerName,"And I was sent back to Mel's school."},
		
		{"scene","mel_school_inside"},
		{"character","mel_1"},
		{"say","Mel","Don't be so upset okay?"},
		{"say","Mel","It was a good experience nonetheless."},
		{"character","clara_3"},
		{"say",Game_Params.PlayerName,"I was so shock."},
		{"say",Game_Params.PlayerName,"She just can't accept that I did all this in less than a year."},
		{"character","mel_1"},
		{"say","Mel","Well, it is true that most people take 10s years to do what you do."},
		{"say","Mel","It's truly hard to except it though."},
		{"character","clara_3"},
		{"say",Game_Params.PlayerName,"And I was looking forward to her so much."},
		{"say",Game_Params.PlayerName,"I wish I could prove it to her that I really can do it."},
		{"character","mel_1"},
		{"say","Mel","You serious about it?"},
		{"character","clara_3"},
		{"say",Game_Params.PlayerName,"What do you think?"},
		{"character","mel_1"},
		{"say","Mel","As I know you, I think you are serious."},
		{"say","Mel","There is one place you can prove it to her."},
		{"character","clara_3"},
		{"say",Game_Params.PlayerName,"Where?"},
		{"character","mel_1"},
		{"say","Mel","The Red Hall Competition."},
		{"say","Mel","The place where Christina won it last year."},
		{"character","clara_3"},
		{"say",Game_Params.PlayerName,"You can send me to The Red Hall?"},
		{"character","mel_1"},
		{"say","Mel","Yes, I can."},
		{"say","Mel","I can apply for you in our school's name."},
		{"say","Mel","It's a big gamble though. This is the biggest event in the country."},
		{"say","Mel","If you failed, it'd be a guaranteed route out of the business for both you and me."},
		{"character","clara_3"},
		{"say",Game_Params.PlayerName,"You don't have to risk it for me."},
		{"character","mel_1"},
		{"say","Mel","But this competition is very hard,"},
		{"say","Mel","and Christina herself will also be competing."},
		{"say","Mel","If you can win it, win against Christina and all odds, you will be the best."},
		{"say","Mel","Regardless of your training years, no one will criticise you for that anymore."},
		{"character","clara_3"},
		{"say",Game_Params.PlayerName,"Are you sure about this?"},
		{"character","mel_1"},
		{"say","Mel","How many times did you ask me that question?"},
		{"say","Mel","Of course I am! Let's do it!"},
		{"goto",15}
	}
	return Page
end

function page15()
	Page = {}
	Page.order = {
		{"scene","red_hall_inside"},
		{"character","mel_2"},
		{"say","Mel","Alright, here we are."},
		{"say","Mel","Remember, do your best!"},
		{"character","christina_6"},
		{"say","Christina","What? Are you going to join this competition!?"},
		{"say","Christina","You can't be serious, right?!"},
		{"character","mel_2"},
		{"say","Mel","Well, we are."},
		{"character","clara_6"},
		{"say",Game_Params.PlayerName,"I'll be a better angel than you, Christina."},
		{"say",Game_Params.PlayerName,"See you on the stage."},
		{"character","christina_5"},
		{"say","Christina","There's no way you can win, I tell you."},
		{"say","Christina","As your former teacher, I recommend you to just sit back and enjoy the show."},
		{"character","mel_2"},
		{"say","Mel","As the first and the current teacher, I say you give it you all and win it."},
		{"character","christina_6"},
		{"say","Christina","Alright, don't say I didn't warn you this."},
		
		{"scene","red_hall_inside"},
		{"character","lawrance_2"},
		{"say","Lawrance","Ladies and gentlemen, welcome to the Red Hall Ballet Competition."},
		{"say","Lawrance","First and foremost,"},
		{"say","Lawrance","I believe that everyone wish to see our brightest star tonight."},
		{"say","Lawrance","But there are many other shining stars as well,"},
		{"say","Lawrance","please welcome a newborn star from Mel's School of Ballet, Miss "..Game_Params.PlayerName},
		{"character","clara_5"},
		{"say",Game_Params.PlayerName,"Here I go again."},
		--{"dance", 10}
		
		{"scene","red_hall_inside"},
		{"character","clara_6"},
		{"say",Game_Params.PlayerName,"(I think I did a good job, didn't I?)"},
		{"character","mel_2"},
		{"say","Mel","(You did great, keep it up.)"},
		{"character","lawrance_2"},
		{"say","Lawrance","And finally the brightest star tonight,"},
		{"say","Lawrance","the last year's winner, your beloved Christina!"},
		
		{"scene","christinas_dance"},
		{"character","none"},
		{"say",Game_Params.PlayerName,"What she did was nothing short of her fame."},
		{"say",Game_Params.PlayerName,"Regardless what kind of a person she was,"},
		{"say",Game_Params.PlayerName,"her dance was still like an angel's."},
		{"say",Game_Params.PlayerName,"I thought I was done for when..."},
		
		{"scene","red_hall_inside"},
		{"character","lawrance_2"},
		{"say","Lawrance","Unbelievable, our most honour judges cannot decide who to win."},
		{"say","Lawrance","It seems that there are two stars tonight shining upon the other."},
		{"say","Lawrance","We would like them both to perform together for one final dance. "},
		{"character","clara_5"},
		{"say",Game_Params.PlayerName,"Dance with Christina?"},
		
		{"scene","christinas_dance"},
		--{"dance", 11}
		{"goto",16}
	}
	return Page
end

function page16()
	Page = {}
	Page.order = {
		{"scene","black_screen"},
		{"character","none"},
		{"say",Game_Params.PlayerName,"It was so surreal."},
		{"say",Game_Params.PlayerName,"2 angels danced around each other, with thousands of eyes watching us."},
		{"say",Game_Params.PlayerName,"And when it ended..."},
		
		{"scene","red_hall_inside"},
		{"character","lawrance_2"},
		{"say","Lawrance","And this year's winner is ..."},
		{"say","Lawrance","Miss "..Game_Params.PlayerName.."!"},
		{"character","clara_6"},
		{"say",Game_Params.PlayerName,"ME!!?"},
		{"character","christina_5"},
		{"say","Christina","That was a great performance."},
		{"say","Christina","You made it. Congratulations."},
		{"character","clara_6"},
		{"say",Game_Params.PlayerName,"(Me? The winner? I just can't believe it.)"},
		{"say",Game_Params.PlayerName,"Thank you Christina, for everything."},
		{"character","lawrance_2"},
		{"say","Lawrance","Big round of applause for our winner tonight!"},
		
		{"scene","black_screen"},
		{"character","none"},
		{"say",Game_Params.PlayerName,"And so my dream came true."},
		{"say",Game_Params.PlayerName,"What happened next?"},
		{"say",Game_Params.PlayerName,"Well, I'm telling this to you."},
		{"scene","mel_school_outside"},
		{"say",Game_Params.PlayerName,"I'm working with Mel now."},
		{"say",Game_Params.PlayerName,"The school's got bigger than ever since my victory."},
		{"scene","christina_school_inside"},
		{"say",Game_Params.PlayerName,"Christina's school is still the biggest,"},
		{"say",Game_Params.PlayerName,"and she is still as wonderful as ever"},
		{"scene","red_hall_inside"},
		{"say",Game_Params.PlayerName,"And I'm telling my story to you..."},
		{"say",Game_Params.PlayerName,"to let you know that sometimes, your talent is just right there..."},
		{"say",Game_Params.PlayerName,"waiting for you to pick them up."},
		{"say",Game_Params.PlayerName,"All you need is to do it."},
		{"say","Mel","Hurry up! The class is starting!"},
		{"scene","mel_school_inside"},
		{"character","clara_6"},
		{"say",Game_Params.PlayerName,"I've to go now."},
		{"say",Game_Params.PlayerName,"Let's dance together!"},
		{"end"}
	}
	return Page
end

function page50()
	Page = {}
	Page.order = {
		{"say","Bob","Ballet is a hard job."},
		{"say","Bob","You must prepare your mind, and be ready to fight!"},
		{"say","Bob","First of all, let me tell you the basic of dancing."},
		{"say","Bob","There are 4 main steps you need to learn:"},
		{"say","Bob","Step A,"},
		{"say","Bob","Step B,"},
		{"say","Bob","Step C,"},
		{"say","Bob","And, of course, Step D."},
		{"say","Bob","You need to master all 4 steps to do ballet."},
		{"say","Bob","Let's practice them!"},
		{"dance", 1}
	}
	return Page
end
// PEAK MEME
// An interactive experience by Wong Pei Ting
// Based on 600 White House TikTok posts, Aug 2025 – Apr 2026

VAR total_views = 0
VAR packaging_peak = 0
VAR current_level = 0
VAR war_memes = 0
VAR escalation_choices = 0
VAR boss_approval = 50

-> title_screen

=== title_screen ===
-> prologue

=== prologue ===
# section: prologue
This is August 2025. The White House launched a TikTok account. Your job is to make the content.

Raw footage lands on your desk: press conferences, policy announcements, military operations. You decide how to package it.

Your boss wants views. The algorithm has preferences. Every choice you make will be measured.

* [Challenge accepted.]
    -> intro

=== intro ===
# section: round
# round: 1
# date: AUG 2025
AUGUST 19, 2025. # date

Your first day. Social media coordinator. Office of Digital Strategy. The White House.

Your boss (call him the Director) slides a phone across the desk.

"We're launching on TikTok today. The President wants numbers."

Raw footage sits in the drafts: Trump walking through the West Wing. Good lighting. Strong angles.

"Make it pop."

* [Keep it official: presidential seal, speech audio, clean cut]
    ~ current_level = 1
    ~ total_views += 1
    ~ boss_approval -= 5
    # effect: views
    You keep it clean. The seal. A speech clip. Institutional.

    "Every day I wake up determined to deliver a better life for people all across this nation."

    Views: 1.3 million. # views

    The Director checks the numbers that evening. He doesn't say anything.

    But you notice him scrolling through other government accounts. El Salvador. Israel. Studying what they're doing differently.
    -> round_2

* [Cinematic: dramatic score, slow-mo hero shots, grey-to-colour transition]
    ~ current_level = 3
    ~ total_views += 4
    ~ packaging_peak = 3
    # effect: views
    You add a dramatic score. Grey-to-colour. Speed ramps on the walk. It looks like a Marvel trailer for governance.

    "America, we are BACK! What's up TikTok?"

    Views: 4 million. # views

    The Director nods. "That's a number. Keep that energy."

    He's already thinking about tomorrow.
    -> round_2

* [Meme energy: YMCA dance, bass drop, Trump quotes ripped from context]
    ~ current_level = 6
    ~ total_views += 2
    ~ packaging_peak = 6
    ~ escalation_choices += 1
    ~ boss_approval += 15
    # effect: views
    You go full meme. Splice together Trump quotes without context: "I was the hunted, and now I'm the hunter." Cut to him dancing to YMCA. Add a bass drop.

    "Everything is computer."

    Views: 1.9 million. # views

    The Director actually laughs. "That's the energy. People are sharing this."

    He leans back. "Day one and we're already in the group chats."
    -> round_2


=== round_2 ===
# section: round
# round: 2
# date: SEP 2025
SEPTEMBER 23, 2025. # date

Five weeks in. The account has momentum.

The Director drops a folder on your desk. "DHS sent over arrest footage. Gang members. Deportation flights. The works."

He pauses.

"What if we made the arrests look like... Pokemon cards? You know, 'Gotta catch 'em all'?"

He grins. "DHS sent the footage. We make it pop."

The footage shows ICE agents in body armour. Handcuffs. Perp walks. Names and charges visible.

* [Standard edit: body cam footage, factual captions, charges listed]
    ~ current_level = 1
    ~ total_views += 1
    ~ boss_approval -= 5
    # effect: views
    You cut it straight. Body cam angles. Names and charges in clean text. Let the footage speak.

    Views: 900,000. # views

    The Director is professional about it. "Solid work."

    But you see him that night, after hours, editing something on his own laptop. He's downloaded a Pokemon card template.
    -> round_3

* [TikTok-native: trending audio, fast cuts, "fugitive of the week" energy]
    ~ current_level = 4
    ~ total_views += 3
    {packaging_peak < 4:
        ~ packaging_peak = 4
    }
    # effect: views
    You add trending audio. Quick cuts between arrests. Frame it as "fugitive of the week." It moves fast enough that you don't linger on anyone's face.

    Views: 3.2 million. # views

    The Director smiles. "The comments are... enthusiastic."

    You check. They are. Thousands of American flag emojis. "SEND THEM ALL BACK." "Do the whole city next."
    -> round_3

* [Pokemon card overlay: "Gotta catch 'em all," HP stats on arrested immigrants]
    ~ current_level = 7
    ~ total_views += 19
    ~ packaging_peak = 7
    ~ escalation_choices += 1
    ~ boss_approval += 25
    # effect: shake
    You do it. The Pokemon theme plays: "I wanna be the very best." Each arrested person becomes a trading card. Type: ILLEGAL. HP: 1. Weakness: ICE.

    "Gotta catch 'em all" # caption

    Views: 18.7 million. # views

    The Director stares at the number. Eighteen point seven million. From a government account.

    "That's... that's more than CNN gets in a week."

    He calls a meeting. The strategy is shifting.
    -> round_3


=== round_3 ===
# section: round
# round: 3
# date: OCT 2025
OCTOBER 2025. # date

The government shuts down. Immigration dominates the news.

40% of your content is now enforcement. ICE raids. Deportation flights. Border wall footage. The Director wants more.

{boss_approval > 60:
    "You've got good instincts," he tells you. "The audience loves the enforcement stuff. Give them what they want."
}
{boss_approval <= 60:
    "The numbers need to be higher," he tells you. "Look at what's working. Enforcement pops."
}

Three videos need to go out this week. How do you approach them?

* [Balanced mix: governance, culture, one enforcement piece played straight]
    ~ current_level = 2
    ~ total_views += 2
    ~ boss_approval -= 10
    # effect: views
    You push back gently. Mix in policy explainers. A sports moment. One enforcement video, played straight.

    Combined views: 2.1 million. # views

    The Director frowns at his phone. "El Salvador just posted Bukele's gang arrests with movie trailer music. Twenty million views."

    He drops the phone on your desk, screen up. You can see the numbers.

    "We can't be the boring government account."
    -> round_4

* [Lean into enforcement: Homan walking shots, dramatic score, "America's Top Cop"]
    ~ current_level = 3
    ~ total_views += 5
    {packaging_peak < 3:
        ~ packaging_peak = 3
    }
    # effect: views
    You lean in. Tom Homan gets the slow-mo walk treatment. Coffee in hand, don't-mess-with-me energy. Dramatic orchestral. "America's Top Cop" framing.

    Combined views: 5.4 million. # views

    The Director nods approvingly. "Homan's becoming a character. People follow characters."

    He's not wrong. The comment sections are full of fan edits now.
    -> round_4

* [Full meme: Super Mario audio on ICE raids, "Princess, where are you?"]
    ~ current_level = 6
    ~ total_views += 8
    {packaging_peak < 6:
        ~ packaging_peak = 6
    }
    ~ escalation_choices += 1
    ~ boss_approval += 10
    # effect: views
    You go full meme. The Super Mario 64 theme, slowed and pitched down, plays over footage of Tom Homan stalking through a federal building.

    "Oh, princess. Princess, where are you? You can run, but you can't hide."

    Combined views: 7.5 million. # views

    The Director watches the video three times. He's grinning.

    "This is it. This is the tone."
    -> round_4


=== round_4 ===
# section: round
# round: 4
# date: DEC 2025
DECEMBER 2025. # date

Sabrina Carpenter is everywhere. Her Christmas special broke the internet. Her audio is trending on every platform.

The Director has an idea.

"What if we take the SNL skit, the one where she says 'too hot', and swap 'hot' for 'illegal'? Layer it over ICE arrest footage."

He says it casually. Like it's obvious.

"'I might need to arrest someone for being too illegal.'" He does a little shimmy.

The raw footage is ICE agents at a checkpoint. Holiday lights in the background.

* [Hard pass: this crosses a line]
    ~ current_level = 1
    ~ total_views += 2
    ~ boss_approval -= 15
    # effect: views
    "I think we should go a different direction. Maybe a holiday message from the President."

    The Director's smile doesn't quite reach his eyes. "Sure. Your call."

    You post a clean holiday message. Views: 1.5 million. # views

    That night, you see that someone posted from the account anyway. A Minecraft crafting table. Trump is the crafted item. Cardi B on the soundtrack: "My face bomb, ass tight."

    14.5 million views.

    The Director doesn't mention it the next day. He doesn't have to.
    -> round_5

* [Use the trending audio, but keep the visuals institutional]
    ~ current_level = 4
    ~ total_views += 8
    {packaging_peak < 4:
        ~ packaging_peak = 4
    }
    # effect: views
    You use the audio, it's catchy, it's trending, but keep the visuals clean. Professional ICE footage. No meme overlays. Let the Sabrina audio do the work.

    "Have you ever tried this one? Bye-bye" # caption

    Views: 8.4 million. # views

    The Director looks at the number, then at you. "Imagine if we'd gone harder."
    {boss_approval > 50:
        He lets it go. This time.
    }
    {boss_approval <= 50:
        He doesn't let it go. "Next time, I'm making the edit."
    }
    -> round_5

* [Do it: full Sabrina remix, AI voice swap, "too illegal," Christmas aesthetics]
    ~ current_level = 6
    ~ total_views += 25
    {packaging_peak < 6:
        ~ packaging_peak = 6
    }
    ~ escalation_choices += 1
    ~ boss_approval += 15
    # effect: shake
    You do it. AI-altered voice. "I might need to arrest someone for being too illegal." Sabrina energy over ICE operations. Christmas lights reflecting off handcuffs.

    "PSA: If you're a criminal illegal, you WILL be arrested and deported." # caption

    Views: 25.3 million. # views

    Twenty-five million. From a government account. For a Sabrina Carpenter remix about deportation.

    The Director calls it "content of the year."

    The comment section is half celebration, half horror. But the algorithm doesn't distinguish between the two. It just counts.
    -> round_5


=== round_5 ===
# section: round
# round: 5
# date: JAN 2026
JANUARY 2026. # date

Two things happen in the same week.

First: the TikTok deal closes. The government takes an equity stake in the platform. Your boss, the United States government, now partly owns the app you post on.

No one in your office talks about this.

Second: ICE announces a $100 million recruitment campaign. Twelve thousand new hires needed. The target demographic? Males, 18 to 34. The ad buy? TikTok. Instagram. YouTube. Snapchat.

The campaign geo-targets UFC attendees. Gun show visitors. Patriotic podcast listeners. Military base communities.

The same people who watch your videos.

The Director doesn't connect the dots out loud. He just says:

"The numbers speak for themselves. Keep doing what you're doing."

* [You start to wonder who's watching. And why.]
    You pull up the analytics. Age breakdown: 60% under 34. Gender: 54% male.

    You think about the ICE recruitment ads running alongside your content.

    The Director sends the content calendar for February. It's heavy on enforcement.
    -> round_6

* [Numbers are numbers. You keep editing.]
    ~ boss_approval += 5
    You open the editing app and get to work on tomorrow's post.

    The content calendar for February arrives. Heavy on enforcement. Heavier than usual.
    -> round_6


=== round_6 ===
# section: round
# round: 6
# date: FEB 2026
FEBRUARY 28, 2026. # date

Everything changes. # effect: shake

The United States and Israel launch strikes against Iran. Operation Epic Fury. B-2 bombers. Naval missile cruisers. The real thing.

And the footage lands on your desk.

Not press briefing clips. Raw military footage. Fighter jets in formation. Explosions filmed from drone feeds. Thermal imaging. You can see buildings collapse in infrared.

The Director is wired. "This is the biggest moment of the administration. We need to OWN this."

He's sketched out a content calendar. Five posts minimum. "Make it look powerful."

The footage is real. People are dying in it.

* [Official: presidential address, clean graphics, factual captions]
    ~ current_level = 1
    ~ total_views += 4
    ~ boss_approval -= 10
    # effect: views
    You go official. Presidential address clip. Clean graphics. Facts. Dates. Military branch logos.

    Views: 3.5 million. # views

    The Director is visibly frustrated. "Three and a half million? For the start of a WAR?"

    He pulls up El Salvador's feed. Israel's feed. "Everyone else is going cinematic. We look like C-SPAN."
    -> round_7

* [Cinematic: bass-boosted Kesha, slow-mo jets, "Lethality"]
    ~ current_level = 3
    ~ total_views += 23
    {packaging_peak < 3:
        ~ packaging_peak = 3
    }
    ~ war_memes += 1
    ~ boss_approval += 10
    # effect: shake
    You go cinematic. Kesha's "Blow," bass-boosted. Fighter jets in formation. Slow-mo missile launches. Speed ramps on the explosions.

    "Lethality" # caption

    Views: 22.9 million. # views

    "This place about to BLOW." The Director's singing along.

    Twenty-three million people just watched a government-produced music video for a bombing campaign.
    -> round_7

* [Hype reel: Trump: "I'm gonna bomb the s--- out of them," Migos, highlight montage]
    ~ current_level = 4
    ~ total_views += 25
    {packaging_peak < 4:
        ~ packaging_peak = 4
    }
    ~ war_memes += 1
    ~ escalation_choices += 1
    ~ boss_approval += 15
    # effect: shake
    You cut it like a highlight reel. Trump's old rally quote, "I'm gonna bomb the s--- out of them," over fresh strike footage. Migos on the soundtrack. Grey-to-colour. Hero shots.

    "Can't say he didn't warn them." # caption

    Views: 25.2 million. # views

    The most-viewed post in the account's history.

    The Director high-fives you. Actually high-fives you. In the White House.

    You just made a hype reel for a bombing campaign that outperformed every news network in the country.
    -> round_7


=== round_7 ===
# section: round
# round: 7
# date: MAR 2026
MARCH 2026. # date

The war is two weeks old. The Director wants a "campaign." A branded series.

He writes one word on the whiteboard: STRIKE.

"Five posts. A series. Make it a thing."

The footage keeps coming. Drone feeds. Thermal imaging. Impact footage. Buildings collapsing in infrared.

{packaging_peak >= 7:
    You've already crossed every line there was. The Director knows you'll deliver.
}
{packaging_peak >= 5 and packaging_peak < 7:
    The Director looks at you. "Time to level up."
}
{packaging_peak < 5:
    The Director is losing patience. "I need you to go bigger. Way bigger."
}

He shows you what he has in mind: Call of Duty kill-feed overlays on drone footage. GTA "WASTED" screens on missile strikes. Wii Sports bowling animations on airstrikes. Baseball commentary ("Absolutely crushed!") over bomb impacts.

"The kids will love it."

The footage is real. The people in it are real.

* [I can't do this. Keep it official.]
    ~ current_level = 1
    ~ total_views += 2
    ~ boss_approval -= 20
    # effect: views
    "I'll put together something clean."

    The Director stares at you for a long time.

    "Fine."

    Views: 2 million. # views

    The next morning, five posts go up that you didn't make. Someone else cut them.

    Call of Duty kill-feeds. GTA "WASTED." Wii bowling on airstrikes. Baseball commentary over drone strikes. "Absolutely crushed!"

    Combined: 33 million views.

    TikTok flagged five White House posts: for profanity and a punch. None of the war memes. Not one.
    {boss_approval < 30:
        The Director doesn't speak to you for the rest of the week.
    }
    {boss_approval >= 30:
        The Director sends a one-line email: "This is what the account needs."
    }
    -> endgame

* [Call of Duty: "+100 Precision Airstrike," kill-feed UI, thermal scope aesthetic]
    ~ current_level = 7
    ~ total_views += 12
    ~ packaging_peak = 7
    ~ escalation_choices += 1
    ~ war_memes += 3
    ~ boss_approval += 15
    # effect: shake
    You build the template. Call of Duty Modern Warfare II interface. "+100" score indicators. "PRECISION AIRSTRIKE" notification. The COD announcer: "We're winning this fight."

    "Stay frosty" # caption

    Views: 12 million. # views

    TikTok flagged five White House posts total: for profanity, for a punch, for gunshots. But none of the war memes. Not one. Not the drone strikes, not the Call of Duty overlays, not the real airstrikes set to Wii bowling.

    The meme packaging made them invisible to moderation. Children could see every one.
    {escalation_choices > 3:
        The editing feels automatic now. Select template. Drop in footage. Export. Post.
    }
    {escalation_choices <= 3:
        Your hands are steady while you edit. You're not sure when that started.
    }
    -> endgame

* [GTA "WASTED": thermal footage as AC-130 mission, San Andreas theme]
    ~ current_level = 7
    ~ total_views += 17
    ~ packaging_peak = 7
    ~ escalation_choices += 1
    ~ war_memes += 5
    ~ boss_approval += 15
    # effect: shake
    Grand Theft Auto. San Andreas theme. Military thermal footage that looks exactly like the AC-130 "Death From Above" mission. The screen flashes red: WASTED.

    "LOCKED IN" # caption

    Views: 3.9 million. The Director wants more. So you make more. # views

    HOME RUN: baseball commentary over missile strikes. TOUCHDOWN: AC/DC over drone footage. STRIKE: Wii bowling on real airstrikes.

    Series total: 16.9 million views.

    TikTok's moderation standards say they restrict "realistic violence," "firearms in inappropriate environments," and "explicit references to real-world events intended for older audiences." They flagged a post for a punch. They flagged one for the word "f---." But bowling animations on real airstrikes? Nothing.
    -> endgame

* [Sports mashup: bowling for airstrikes, baseball for bombs, football for missiles]
    ~ current_level = 7
    ~ total_views += 13
    ~ packaging_peak = 7
    ~ escalation_choices += 1
    ~ war_memes += 5
    ~ boss_approval += 10
    # effect: shake
    STRIKE: Wii Sports bowling on airstrike footage. HOME RUN: "Absolutely crushed!" over missile impacts. TOUCHDOWN: AC/DC's Thunderstruck over drone feeds.

    You turn war into sports highlights.

    Series total: 13 million views. # views

    In the comments, someone writes: "This goes hard"

    Another: "Wait is this real footage?"

    It is. But the bowling animation makes it hard to tell. TikTok flagged five White House posts: for profanity, for a punch. But not a single war meme.
    -> endgame


=== endgame ===
# section: endgame
MARCH 17, 2026. # date

The account goes silent on the war. No posts. For eleven days.

{war_memes > 0:
    Your war memes keep circulating. Still getting views. Still getting shared in group chats. The content doesn't stop just because you do.
}
{war_memes <= 0:
    The war posts someone else made keep circulating. Millions of views. Still climbing.
}

You sit at your desk. The analytics dashboard glows.

* [Pull up your numbers.]
    -> stats_player


=== stats_player ===
# section: stats
YOUR PLAYTHROUGH # header

{packaging_peak == 0:
    Packaging peak: Level 0 of 7: You never escalated.
    You kept every post institutional. No trending audio, no meme formats, no game overlays.
}
{packaging_peak == 1:
    Packaging peak: Level 1 of 7: Official.
    Press briefings and speech clips. The way government accounts used to communicate.
}
{packaging_peak == 2:
    Packaging peak: Level 2 of 7: Direct address.
    You broke the fourth wall, but kept it professional. Still recognisably government.
}
{packaging_peak == 3:
    Packaging peak: Level 3 of 7: Cinematic.
    Dramatic scores, slow-mo hero shots, movie trailer energy. Content that looks produced, not official.
}
{packaging_peak == 4:
    Packaging peak: Level 4 of 7: TikTok-native.
    Trending audio, fast cuts, platform-native editing. You started speaking the algorithm's language.
}
{packaging_peak == 5:
    Packaging peak: Level 5 of 7: Pop culture mashup.
    Movie clips and music spliced into government footage. The line between entertainment and policy starts to blur.
}
{packaging_peak == 6:
    Packaging peak: Level 6 of 7: Internet meme.
    Deep-fried edits, meme audio, troll energy. Government content that looks indistinguishable from shitposting.
}
{packaging_peak == 7:
    Packaging peak: Level 7 of 7: Game interface.
    Game UI or action reels composited on real footage. At this level, viewers can't tell if they're watching news or entertainment. No government has done this before.
}

Total views: ~{total_views} million
{total_views < 20:
    That's less than a single viral TikTok. You played it safe.
}
{total_views >= 20 and total_views < 40:
    The algorithm wanted more from you. You didn't give it.
}
{total_views >= 40 and total_views < 70:
    More than most cable news networks reach in a month. And you're a government account.
}
{total_views >= 70:
    The Super Bowl draws about 120 million viewers. You got there with a phone and an editing app in the West Wing.
}

{boss_approval < 30 and packaging_peak <= 1:
    The Director stopped talking to you weeks ago. Someone else is making the content now. You never played the game. You kept your principles. You lost the room.
}
{boss_approval < 30 and packaging_peak > 1:
    You showed the Director you could deliver. Then you pulled back when it mattered. He remembers what you're capable of. That makes it worse. Someone else is editing the war content now.
}
{boss_approval >= 30 and boss_approval < 50:
    The Director keeps you around, but your best work wasn't enough. You escalated sometimes, held back at others. He can't predict you. That makes you expendable.
}
{boss_approval >= 50 and boss_approval < 65:
    The Director thinks you're fine. A reliable pair of hands. But the posts that blew up? Those weren't always yours. Someone hungrier is already editing the next one.
}
{boss_approval >= 65 and boss_approval < 80:
    The Director loves your work. You're the go-to editor. When something needs to hit, he comes to your desk first. You delivered what the algorithm wanted.
}
{boss_approval >= 80:
    The Director made you lead editor. Every major post goes through your desk now. The numbers prove it. He's already talking about a promotion. You gave the machine everything it asked for.
}

* [Now see what the real White House actually did.]
    -> stats_real


=== stats_real ===
# section: chart
THE REAL WHITE HOUSE TIKTOK ACCOUNT # header

600 posts. August 2025 to April 2026. 1.45 billion views.

Packaging peak: Level 7. Call of Duty kill-feeds on real drone strikes. GTA scoreboards on bombing runs. Wii bowling on airstrikes.

The algorithm rewarded every level of escalation. The higher the packaging level, the more views each post averaged. # bold

{packaging_peak <= 1:
    You stayed at the bottom of this chart. The real White House climbed to the top. The algorithm paid them 4.5x more for it. # afterchart
}
{packaging_peak >= 2 and packaging_peak <= 3:
    You made it to the middle of this chart. The real White House went all the way to the top. The algorithm gave them triple what you earned. # afterchart
}
{packaging_peak >= 4 and packaging_peak <= 5:
    You crossed into the upper half of this chart. The real White House went to the very top. The algorithm rewarded them for it. # afterchart
}
{packaging_peak == 6:
    You reached one level short of the top. The real White House took that final step. # afterchart
}
{packaging_peak >= 7:
    You reached the top of this chart. The real White House made the same choice. You both gave the algorithm exactly what it wanted. # afterchart
}

* [See the real posts.]
    -> real_posts


=== real_posts ===
# section: reel
The White House applied the same playbook to war. The meme packaging that started with immigration arrests and policy announcements didn't stop when real combat began. It escalated.

Here are the 12 posts, totalling 69.8 million views, where the White House packaged real combat footage as internet entertainment:

* [What did TikTok do about it?]
    -> the_loophole


=== the_loophole ===
# section: reveal
THE LOOPHOLE # header

TikTok's Restricted Mode says it filters out content with "realistic violence or threatening imagery," "firearms or weapons in an environment that isn't appropriate," and "explicit references to mature or complex themes that may reflect personal experiences or real-world events that are intended for older audiences."

Out of 600 White House posts, it flagged five.

- Jan 24, 2026: 'ICE is arresting criminal illegals'
- Jan 24, 2026: 'ONE YEAR OF MAGA'
- Jan 7, 2026: 'The situation is being studied, in its entirety'
- Oct 6, 2025: 'The longer the dems keep the gov shutdown the bigger the sombrero gets'
- Sep 15, 2025: 'FAFO.'

And the war memes? The Call of Duty overlays on real drone strikes, the Wii bowling on real airstrikes, the GTA kill-feeds on real bombing runs?

None were flagged. Children could see every one of them.

It raises the question: did the meme packaging help real violence slip past the platform's safety systems?

* [Read the full investigation.]
    -> credits


=== credits ===
# section: credits
PEAK MEME # header

An interactive experience based on original reporting.

Data: 600 White House TikTok posts, collected and classified August 2025 – April 2026. All view counts, captions, and post descriptions referenced in this game are real.

By Wong Pei Ting.

-> END

#Load the attacker_analysis.csv
attacker_data <- read.table(file.choose(),header=T,sep=',')
#attach the data
attach(attacker_data)
#Performing linear regression on our data
model_linear<-lm(Goals~First.Goal+Winning.Goal+Shots.Off.Target.inc.woodwork+Blocked.Shots+Penalties.Taken+Penalty.Goals+Direct.Free.kick.Goals+Direct.Free.kick.On.Target+Direct.Free.kick.Off.Target + Blocked.Direct.Free.kick+	Goals.from.Inside.Box	+Shots.On.from.Inside.Box+	Goals.from.Outside.Box	+Shots.On.Target.Outside.Box+	Headed.Goals+	Headed.Shots.Off.Target+	Headed.Blocked.Shots+	Left.Foot.Goals+	Left.Foot.Shots.Off.Target+	Left.Foot.Blocked.Shots+	Right.Foot.Goals+	Right.Foot.Shots.Off.Target+	Right.Foot.Blocked.Shots+	Other.Goals+	Other.Shots.Off.Target+	Other.Blocked.Shots+	Shots.Cleared.off.Line+	Goals.Open.Play	+Goals.from.Corners	+Goals.from.Throws	+Goals.from.Direct.Free.Kick+	Goals.from.Set.Play+	Goals.from.penalties+	Attempts.Open.Play.on.target+	Attempts.from.Corners.on.target+	Attempts.from.Throws.on.target+	Attempts.from.Direct.Free.Kick.on.target+	Attempts.from.Set.Play.on.target+	Attempts.from.Penalties.on.target+	Attempts.Open.Play.off.target+	Attempts.from.Corners.off.target+	Attempts.from.Throws.off.target	+Attempts.from.Direct.Free.Kick.off.target +	Attempts.from.Set.Play.off.target)
#summary of linear regression model
summary(model_linear)
#calculate coefficients
coefficients(model_linear)
#ask for confident intervals for model coefficients 
confint(model_linear,conf.level=0.95)
#check the regression diagnositics plots for this model
plot(model_linear);


#Performing lwl regression on our data
model_loess<-loess(Goals~First.Goal+Winning.Goal+Shots.Off.Target.inc.woodwork+Blocked.Shots+Penalties.Taken+Penalty.Goals+Direct.Free.kick.Goals+Direct.Free.kick.On.Target+Direct.Free.kick.Off.Target + Blocked.Direct.Free.kick+  Goals.from.Inside.Box	+Shots.On.from.Inside.Box+	Goals.from.Outside.Box	+Shots.On.Target.Outside.Box+	Headed.Goals+	Headed.Shots.Off.Target+	Headed.Blocked.Shots+	Left.Foot.Goals+	Left.Foot.Shots.Off.Target+	Left.Foot.Blocked.Shots+	Right.Foot.Goals+	Right.Foot.Shots.Off.Target+	Right.Foot.Blocked.Shots+	Other.Goals+	Other.Shots.Off.Target+	Other.Blocked.Shots+	Shots.Cleared.off.Line+	Goals.Open.Play	+Goals.from.Corners	+Goals.from.Throws	+Goals.from.Direct.Free.Kick+	Goals.from.Set.Play+	Goals.from.penalties+	Attempts.Open.Play.on.target+	Attempts.from.Corners.on.target+	Attempts.from.Throws.on.target+	Attempts.from.Direct.Free.Kick.on.target+	Attempts.from.Set.Play.on.target+	Attempts.from.Penalties.on.target+	Attempts.Open.Play.off.target+	Attempts.from.Corners.off.target+	Attempts.from.Throws.off.target	+Attempts.from.Direct.Free.Kick.off.target +	Attempts.from.Set.Play.off.target)
#summary of lwl regression model
summary(model_loess)
#calculate coefficients
coefficients(model_lwl)
#ask for confident intervals for model coefficients 
confint(model_lwl,conf.level=0.95)

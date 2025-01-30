options("width"=150)
# read trees

df<-arrow::read_parquet("https://github.com/hhsievertsen/kbhtrae/raw/refs/heads/main/data/trae_basis.parquet")


df_Strødamvej<-df[df$vejnavn=="Lundehusvej",]
df_EmdrupSoe<-df[df$stednavn%in%c("Emdrup Sø","Emdrup Søpark"),]

table(df_EmdrupSoe$traeart)
table(df_EmdrupSoe$dansk_navn)
table(df_EmdrupSoe$slaegtsnavn)
table(df_EmdrupSoe$slaegt)
View(df_EmdrupSoe)

dfselect<-df_EmdrupSoe[,c("dansk_navn","traeart","wkb_geometry","planteaar")]
dfselect<-dfselect[dfselect$dansk_navn!="",]
View(dfselect)
g
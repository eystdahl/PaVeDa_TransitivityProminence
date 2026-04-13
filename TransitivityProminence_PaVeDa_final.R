#Make matrix of transitivity prominence across IE in PaVeDa data with languages in chronological order

TransitivityProminence_PaVeDa <- matrix(c(78, 73, 78, 76, 80, 83, 73, 66, 73, 71), ncol = 10, byrow = TRUE)

colnames(TransitivityProminence_PaVeDa) <- c("Hittite", "Vedic Sanskrit", "Avestan", "Ancient Greek", "Old Latin", "Old Irish", "Classical Armenian", "Old Church Slavonic", "Old Norse", "Old Lithuanian")

TransitivityProminence_PaVeDa

chisq.test(TransitivityProminence_PaVeDa)

#Make barplot

barplot(TransitivityProminence_PaVeDa, ylim = range(0,100), xlab = "Figure 1. Transitivity Prominence in ancient Indo-European languages", ylab = "Relative frequency (%)", col = c("black"), beside = TRUE)
box()

#Make matrix of transitivity prominence across IE in PaVeDa data with languages in decreasing order

TransitivityProminence_PaVeDa_decreasing <- matrix(c(83, 80, 78, 78, 76, 73, 73, 73, 71, 66), ncol = 10, byrow = TRUE)

colnames(TransitivityProminence_PaVeDa_decreasing) <- c("Old Irish", "Old Latin", "Hittite", "Avestan", "Homeric Greek", "Vedic Sanskrit", "Classical Armenian", "Old Norse", "Old Lithuanian", "Old Church Slavonic")

TransitivityProminence_PaVeDa_decreasing

#Make barplot
par(oma = c(4, 2, 0, 2))
barplot(TransitivityProminence_PaVeDa_decreasing, las = 2, ylim = range(0,100), xlab = "", ylab = "Relative frequency (%)", col = c("black"), beside = TRUE)
box()


#Make neighborNet plot
library("phangorn")

#NeighborNet plot of PaVeDa data

PaVeDa_verbs <- matrix(c(1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1), ncol = 41, byrow = TRUE)
rownames(PaVeDa_verbs) <- c("Hittite", "Vedic", "Avestan", "Homeric Greek", "Old Latin", "Old Irish", "Classical Armenian", "Old Church Slavonic", "Old Norse", "Old Lithuanian")
colnames(PaVeDa_verbs) <- c("ASK FOR", "BEAT", "BREAK", "BUILD", "CARRY", "COVER", "CUT", "DIE", "DRESS", "EAT", "FEAR", "FILL", "FRIGHTEN", "GIVE", "GO", "HEAR", "HELP", "HIDE", "KILL", "KNOW", "LEAVE", "LIKE", "LIVE", "LOOK AT", "NAME", "POUR", "PUT", "RUN", "SAY", "SEARCH FOR", "SEE", "SEND", "SHOW", "SING", "SIT", "SIT DOWN", "TAKE", "THROW", "TIE", "TOUCH", "WASH")
PaVeDa_verbs

#with Hamming distance

charPaVeDa_verbs <- phyDat(PaVeDa_verbs, type = "USER", levels = c(0,1))

distPaVeDa_verbs <- dist.hamming(charPaVeDa_verbs)
netPaVeDa_verbs <- neighborNet(distPaVeDa_verbs)
plot(netPaVeDa_verbs)

#Make matrix of transitivity prominence in IE based on ASTRAPIE data with languages in chronological order

TransitivityProminence_ASTRAPIE <- matrix(c(60, 43, 47, 63, 40, 40, 30, 23, 33, 50, 36), ncol = 11, byrow = TRUE)
colnames(TransitivityProminence_ASTRAPIE) <- c("Hittite", "Vedic", "Homeric Greek", "Old Latin", "Early Irish", "Classical Armenian", "Tocharian", "Old Church Slavonic", "Old Norse", "Old Albanian", "Old Lithuanian")
TransitivityProminence_ASTRAPIE

#Make matrix of transitivity prominence in IE based on ASTRAPIE data with languages in decreasing order

TransitivityProminence_ASTRAPIE_decreasing <- matrix(c(63, 60, 50, 47, 43, 40, 40, 36, 33, 30, 23), ncol = 11, byrow = TRUE)
colnames(TransitivityProminence_ASTRAPIE_decreasing) <- c("Old Latin", "Hittite", "Old Albanian", "Homeric Greek", "Vedic", "Old Irish", "Classical Armenian", "Old Lithuanian", "Old Norse", "Tocharian", "Old Church Slavonic")
TransitivityProminence_ASTRAPIE_decreasing

par(oma = c(4, 2, 0, 2))
barplot(TransitivityProminence_ASTRAPIE_decreasing, las = 2, ylim = range(0,100), xlab = "", ylab = "Relative frequency (%)", col = c("black"), beside = TRUE)
box()

#Make neighborNet plot of ASTRAPIE data


#Factoring in voice marking

ASTRAPIE_verbs <- matrix(c(1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0), ncol = 30, byrow = TRUE)
rownames(ASTRAPIE_verbs) <- c("Hittite", "Vedic", "Homeric Greek", "Old Latin", "Old Irish", "Classical Armenian", "Tocharian", "Old Church Slavonic", "Old Norse", "Old Albanian", "Old Lithuanian")

ASTRAPIE_verbs

charASTRAPIE_verbs <- phyDat(ASTRAPIE_verbs, type = "USER", levels = c(0,1))

distASTRAPIE_verbs <- dist.hamming(charASTRAPIE_verbs)
netASTRAPIE_verbs <- neighborNet(distASTRAPIE_verbs)
plot(netASTRAPIE_verbs)

#Factoring out voice marking

#Make matrix of ASTRAPIE data without voice marking
#Chronological order
TransitivityProminence_ASTRAPIE_alt <- matrix(c(80, 60, 53, 67, 70, 46, 70, 23, 33, 50, 36), ncol = 11, byrow = TRUE)
colnames(TransitivityProminence_ASTRAPIE_alt) <- c("Hittite", "Vedic", "Homeric Greek", "Old Latin", "Early Irish", "Classical Armenian", "Tocharian", "Old Church Slavonic", "Old Norse", "Old Albanian", "Old Lithuanian")
TransitivityProminence_ASTRAPIE_alt

#Decreasing order
TransitivityProminence_ASTRAPIE_alt_decreasing <- matrix(c(80, 70, 70, 67, 60, 53, 50, 36, 33, 30, 23), ncol = 11, byrow = TRUE)
colnames(TransitivityProminence_ASTRAPIE_alt_decreasing) <- c("Hittite", "Old Irish", "Tocharian", "Old Latin", "Vedic", "Homeric Greek", "Old Albanian", "Classical Armenian", "Old Lithuanian", "Old Norse", "Old Church Slavonic")
TransitivityProminence_ASTRAPIE_alt_decreasing

#Make barplot
par(oma = c(4, 2, 0, 2))
barplot(TransitivityProminence_ASTRAPIE_alt_decreasing, las = 2, ylim = range(0,100), xlab = "", ylab = "Relative frequency (%)", col = c("black"), beside = TRUE)
box()


ASTRAPIE_verbs_bis <- matrix(c(1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0), ncol = 30, byrow = TRUE)
rownames(ASTRAPIE_verbs_bis) <- c("Hittite", "Vedic", "Homeric Greek", "Old Latin", "Old Irish", "Classical Armenian", "Tocharian", "Old Church Slavonic", "Old Norse", "Old Albanian", "Old Lithuanian")
#colnames(ASTRAPIE_verbs) <- c()
ASTRAPIE_verbs_bis

charASTRAPIE_verbs_bis <- phyDat(ASTRAPIE_verbs_bis, type = "USER", levels = c(0,1))

distASTRAPIE_verbs_bis <- dist.hamming(charASTRAPIE_verbs_bis)
netASTRAPIE_verbs_bis <- neighborNet(distASTRAPIE_verbs_bis)
plot(netASTRAPIE_verbs_bis)

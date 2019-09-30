######################################
# the reference code of program2 
######################################

######################################
# initial
######################################
library("Biostrings",verbose=F,quietly=T)

# read parameters
args = commandArgs(trailingOnly=TRUE)
if (length(args)==0) {
  stop("USAGE: Rscript hw2_<your student ID>.R --input test.fasta --score pam250.txt --gap -10", call.=FALSE)
}

# parse parameters
i<-1 
while(i < length(args))
{
  if(args[i] == "--input"){
    i_f<-args[i+1]
    i<-i+1
  }else if(args[i] == "--score"){
    s_f<-args[i+1]
    i<-i+1
  }else if(args[i] == "--gap"){
    g<- as.integer(args[i+1]) 
    i<-i+1
  }else{
    stop(paste("Unknown flag", args[i]), call.=FALSE)
  }
  i<-i+1
}

print("PARAMETERS")
print(paste("input file         :", i_f))
print(paste("score file         :", s_f))
print(paste("gap                :", g))

######################################
# main
######################################
# read fasta file
ff <- readAAStringSet(i_f)
seq_name = names(ff)
sequence = paste(ff)
print(sequence[1])
print(sequence[2])

# aln length
aln_length <- nchar(sequence[1])

# read score file
s_m<-read.table(s_f)
s_m<-as.matrix(s_m)

aln_score<-0
for(i in 1:aln_length)
{
  a<-substring(sequence[1], i, i)
  b<-substring(sequence[2], i, i)
  
  if((a != "-")&&(b != "-"))
  {
    #print(paste(a, "-", b, "=", s_m[a,b]))
    aln_score = aln_score + s_m[a,b]
  }
  else{
    aln_score = aln_score + g
  }
}

print(aln_score)


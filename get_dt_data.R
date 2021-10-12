# Obtain the positions of points from the picture 
# procedure:
# 1. calculate the range or cut the picture
# 2. rasterimage with correct boundary
# 3. Use `locator` to obtain the points
# 


if(!require("jpeg")){
    install.packages("jpeg")
}

plotlist=function(a,xL,yL,cL,pt){

    n=length(a)
    plot(a[[1]],xlim=xL,ylim=yL,type="n",xaxs="i",yaxs="i")
    for(i in 1:n){
        lines(a[[i]],col=cL[i])
        points(a[[i]],col=cL[i],pch=pt)
    }
}

if(FALSE){
'
plot(1:5,xaxs="i",yaxs="i")
'
}
#load the picture
A2=readJPEG("example1_cut.jpg")
par(mai=c(0.2,0.2,0,0))
plot(c(1,5),c(1,5),type="n",xaxs="i",yaxs="i")
rasterImage(A2, 1, 1, 5, 5)

# obtain data
n_pt=5
cd0=locator(n_pt)

# draw the data on the picture
lines(cd0,col=2)


if(FALSE){
'
    matplot(1:5,cbind(c(1,1.2,2.5,3,4.5),c(.5,1.5,3,3.3,4.6)),
        xlim=c(0,6),ylim=c(0,5),xaxs="i",yaxs="i",type="b",pch=1,ylab="y",xlab="x")
'
}
A2=readJPEG("example2_cut.jpg")
par(mai=c(0.2,0.2,0,0))
plot(c(0,6),c(0,5),type="n",xaxs="i",yaxs="i")
rasterImage(A2, 0, 0, 6, 5)
# obtain n_pt positions 

cd1=locator(5)
cd2=locator(5)

# plot data
x11()
plotlist(list(cd1,cd2),c(0,6),c(0,5),1:2,1)


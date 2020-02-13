private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
	size(1000,1000);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(213,12,209);   
	line(500,800,500,600);   
	drawBranches(500,600,100,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angle1 = angle+branchAngle;
	double angle2 = angle-branchAngle;
	branchLength = branchLength * fractionLength;
	int endX1 = (int)(branchLength*Math.cos(angle1) + x);
	int endY1 = (int)(branchLength*Math.sin(angle1) + y);  
	int endX2 = (int)(branchLength*Math.cos(angle2) + x);
	int endY2 = (int)(branchLength*Math.sin(angle2) + y);
	line(x,y,endX1,endY1);
	line(x,y,endX2,endY2);
	if(branchLength>smallestBranch){
		drawBranches(endX1,endY1,branchLength-0.01,angle1);
		drawBranches(endX2,endY2,branchLength-0.01,angle2);
	}
} 



public int maxlength = 500;
public float a = 0;
public float b = 0;
public float c = 0;
public void setup()
{
	size(1000,1000);
	background(0);
	
}
public void draw()
{	
	strokeWeight(3);
	fill(0);
	stroke(a,b,c);
	rgb();
	sierpinski(250,700,500);
}
public void mouseDragged()//optional
{

}
public void rgb()
{	

	a+=Math.random()*(Math.random()*5);
	b+=Math.random()*(Math.random()*5);
	c+=Math.random()*(Math.random()*5);
	if(a > 254){a = random(255);}
	if(b > 254){b = random(255);}
	if(c > 254){c = random(255);}
}
public void keyPressed()
{
	if(key == 'q' || key == 'Q'){maxlength*=2;}
	if(key == 'e' || key == 'E'){maxlength/=2;}
}
public void sierpinski(float x, float y, float len) 
{
	if(len <= maxlength)
	{
		triangle(x, y, x+(len/2), y-len, x+len, y);
	}
	else
	{
		sierpinski(x,y,(len/2));
		sierpinski(x+(len/2),y,len/2);
		sierpinski(x+(len/4),y-(len/2),(len/2));

	}
}
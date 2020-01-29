public void setup()
{
	size(1000,1000);
}
public void draw()
{
	sierpinski(100,900,600);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 20)
	{
		triangle((float)x, (float)y, (float)(x+(len/2)), (float)(y), (float)(x+len/4), (float)(y-len/2));
	}
	else
	{
		sierpinski(x,y,(len/2));
		sierpinski(x+(len/2),y,len/2);
		sierpinski(x+(len/4),y-(len/2),(len/2));

	}
}
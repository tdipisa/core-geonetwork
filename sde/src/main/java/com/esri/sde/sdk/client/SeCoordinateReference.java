package com.esri.sde.sdk.client;

import com.esri.sde.sdk.pe.PeCoordinateSystem;

public class SeCoordinateReference {
	
	public void setCoordSysByDescription(String s) {}
	public String getCoordSysDescription() { return null; }
    public String getProjectionDescription() { return null; }
	public double getXYUnits(){return 0;}
	public SeExtent getXYEnvelope() throws SeException { return null; }
	public PeCoordinateSystem getCoordSys() { return null; }
	
	public void setXY(int i, int j, int k){}
	public void setXYByEnvelope(SeExtent s) {}
    public void setPrecision(int precision){}
}

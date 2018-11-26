package com.torlus.jnl;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.*;

public class Workspace {

	public Vector<Entity> entities = new Vector<Entity>();
	
	public String prefix = "";
	
	public Entity find(String name) {
		for(Entity e : entities) {
			if (name.equals(e.getBaseName()))
				return e;
		}
		return null;
	}
	
	public Entity load(String name) {
		String className = name.toLowerCase();
		className = Character.toUpperCase(name.charAt(0)) + name.substring(1);
		try {
			Constructor<?> ctr = Class.forName("com.torlus.jnl.entities."  + className).getConstructor();
			Entity ent;
			try {
				ent = ((Constructor<? extends Entity>)ctr).newInstance();
				// ent.name = name; // In case we forgot it in the constructor
				return ent;
			} catch (InstantiationException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (IllegalArgumentException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			}
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
		}
		return null;
	}
	
}

/*
 *          _ __  ______
 *    _____(_) /_/ ____/
 *   / ___/ / __/___ \
 *  / /  / / /_____/ /
 * /_/  /_/\__/_____/
 * stirring up the inverted game framework
 *
 * rit5, Copyright (c) 2020, Brandon Dulaney, social@brandongrows.me
 * awe6, Copyright (c) 2010, Robert Fell, awe6.org
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

package rit5.interfaces;

#if pixijs
import pixi.core.sprites.Sprite;
#end

/**
 * The IDrawable interface should be implemented by any objects that require drawing on the screen. Those will primarily be entities in the entity traversal stack.
 * <p>Not all entities will necessarily be seen, hence the separate interface. Think invisible enemies in an RPG or the Shadow Pinkies from Doom 1993.</p>
 * @author Brandon Dulaney
**/
interface IDrawable {
	/**
	 * The simplest representation of an entity in most 2D games are sprites.
	 */
	var sprite(default, null):Sprite;

	/**
	 * Set the sprite that will be used by the entity.
	 * @param	l_sprite
	**/
	public function addSprite(l_sprite:Sprite):Void;
}

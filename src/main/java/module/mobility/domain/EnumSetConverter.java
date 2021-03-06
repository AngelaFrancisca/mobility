/*
 * @(#)EnumSetConverter.java
 *
 * Copyright 2010 Instituto Superior Tecnico
 * Founding Authors: Susana Fernandes
 * 
 *      https://fenix-ashes.ist.utl.pt/
 * 
 *   This file is part of the Internal Mobility Module.
 *
 *   The Internal Mobility Module is free software: you can
 *   redistribute it and/or modify it under the terms of the GNU Lesser General
 *   Public License as published by the Free Software Foundation, either version 
 *   3 of the License, or (at your option) any later version.
 *
 *   The Internal Mobility  Module is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 *   GNU Lesser General Public License for more details.
 *
 *   You should have received a copy of the GNU Lesser General Public License
 *   along with the Internal Mobility  Module. If not, see <http://www.gnu.org/licenses/>.
 * 
 */
package module.mobility.domain;

import java.io.Serializable;
import java.util.EnumSet;

/**
 * 
 * @author Susana Fernandes
 * 
 */
public class EnumSetConverter implements Serializable {

    private static final String SEPARATOR = ":";

    public static String externalize(EnumSet enumSet) {
        String result = null;
        if (!enumSet.isEmpty()) {
            result = enumSet.iterator().next().getClass().getName() + SEPARATOR + enumSet.toString();
        }
        return result;
    }

    public static EnumSet internalize(String enumSetString) {
        int indexOfSeparator = enumSetString.indexOf(SEPARATOR);
        String className = enumSetString.substring(0, indexOfSeparator);
        String enumValues = enumSetString.substring(indexOfSeparator + 1);

        EnumSet result = null;
        try {
            Class<Enum> enumClass = (Class<Enum>) Class.forName(className);
            result = EnumSet.noneOf(enumClass);
            enumValues = enumValues.replace('[', ' ').replace(']', ' ').trim();

            for (String enumValue : enumValues.split(",")) {
                result.add(Enum.valueOf(enumClass, enumValue.trim()));
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        return result;
    }
}

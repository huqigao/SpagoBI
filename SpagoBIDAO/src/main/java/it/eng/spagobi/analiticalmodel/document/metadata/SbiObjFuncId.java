/* SpagoBI, the Open Source Business Intelligence suite

 * Copyright (C) 2012 Engineering Ingegneria Informatica S.p.A. - SpagoBI Competency Center
 * This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0, without the "Incompatible With Secondary Licenses" notice. 
 * If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/. */
package it.eng.spagobi.analiticalmodel.document.metadata;

import it.eng.spagobi.analiticalmodel.functionalitytree.metadata.SbiFunctions;




/**
 * SbiObjFuncId generated by hbm2java
 */
public class SbiObjFuncId  implements java.io.Serializable {

    // Fields    

     private SbiFunctions sbiFunctions;
     private SbiObjects sbiObjects;


    // Constructors

    /**
     * default constructor.
     */
    public SbiObjFuncId() {
    }
    
   
    
    

    // Property accessors

    /**
     * Gets the sbi functions.
     * 
     * @return the sbi functions
     */
    public SbiFunctions getSbiFunctions() {
        return this.sbiFunctions;
    }
    
    /**
     * Sets the sbi functions.
     * 
     * @param sbiFunctions the new sbi functions
     */
    public void setSbiFunctions(SbiFunctions sbiFunctions) {
        this.sbiFunctions = sbiFunctions;
    }

    /**
     * Gets the sbi objects.
     * 
     * @return the sbi objects
     */
    public SbiObjects getSbiObjects() {
        return this.sbiObjects;
    }
    
    /**
     * Sets the sbi objects.
     * 
     * @param sbiObjects the new sbi objects
     */
    public void setSbiObjects(SbiObjects sbiObjects) {
        this.sbiObjects = sbiObjects;
    }

   /* (non-Javadoc)
    * @see java.lang.Object#equals(java.lang.Object)
    */
   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof SbiObjFuncId) ) return false;
		 SbiObjFuncId castOther = ( SbiObjFuncId ) other; 
         
		 return (this.getSbiFunctions()==castOther.getSbiFunctions()) || ( this.getSbiFunctions()!=null && castOther.getSbiFunctions()!=null && this.getSbiFunctions().equals(castOther.getSbiFunctions()) )
 && (this.getSbiObjects()==castOther.getSbiObjects()) || ( this.getSbiObjects()!=null && castOther.getSbiObjects()!=null && this.getSbiObjects().equals(castOther.getSbiObjects()) );
   }
   
   /* (non-Javadoc)
    * @see java.lang.Object#hashCode()
    */
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getSbiFunctions().hashCode();
         result = 37 * result + this.getSbiObjects().hashCode();
         return result;
   }   


}
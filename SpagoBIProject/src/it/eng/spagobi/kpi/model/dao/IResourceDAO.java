package it.eng.spagobi.kpi.model.dao;

import it.eng.spago.error.EMFUserError;
import it.eng.spagobi.kpi.model.bo.Resource;
import it.eng.spagobi.kpi.model.metadata.SbiResources;

import java.util.List;

public interface IResourceDAO {

	/**
	 * Inserts a new Resource 
	 * 
	 * @param Resource to insert 
	 * @throws EMFUserError If an Exception occurred
	 */	
	public Integer insertResource(Resource value) throws EMFUserError;

	/**
	 * Load resource by Id
	 * 
	 * @param Resource to insert 
	 * @throws EMFUserError If an Exception occurred
	 */	
	public Resource loadResourceById(Integer resource) throws EMFUserError;

	
	/**
	 * Returns the Resource of the referred id
	 * 
	 * @param id of the Resource
	 * @return Resource with the referred id
	 * @throws EMFUserError If an Exception occurred
	 */	
	public Resource loadResourcesByNameAndModelInst(String resourceName) throws EMFUserError ;
	
	/**
	 * Returns the Resource of the referred code
	 * 
	 * @param code of the Resource
	 * @return Resource with the referred code
	 * @throws EMFUserError If an Exception occurred
	 */	
	public Resource loadResourceByCode(String resourceCode) throws EMFUserError ;
	
	public SbiResources toSbiResource(Resource r) throws EMFUserError; 
	
	public void modifyResource(Resource resource) throws EMFUserError;

	public List loadResourcesList(String fieldOrder, String typeOrder)throws EMFUserError;
	
	public List loadPagedResourcesList(Integer offset, Integer fetchSize)throws EMFUserError;
	
	public Integer countResources()throws EMFUserError;
	
	public void deleteResource(Integer resourceId) throws EMFUserError;

	public Resource toResource(SbiResources r);
}

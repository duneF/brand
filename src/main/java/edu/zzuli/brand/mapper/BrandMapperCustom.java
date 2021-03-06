package edu.zzuli.brand.mapper;

import java.util.List;

import edu.zzuli.brand.pojo.po.Brand;
import edu.zzuli.brand.pojo.vo.BrandVo;

/**
 * 扩展mapper
 * @author 刘文豪
 *
 */
public interface BrandMapperCustom {
    
   public List<Brand> findByPage(BrandVo brandVo)throws Exception;
	//查询总记录数
	public int findBrandCount(BrandVo brandVo) throws Exception;
	
	public List<Brand> query(String bname) throws Exception;

	public List<Brand> queryByremen(String bname) throws Exception;

	public List<Brand> selectByCid(String cid);
	
	public List<Brand> selectByApplication(String application);

}

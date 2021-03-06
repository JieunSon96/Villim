package kh.spring.interfaces;

import java.util.List;

import kh.spring.dto.HomeDTO;
import kh.spring.dto.LikeyDTO;
import kh.spring.dto.LikeyListDTO;

public interface LikeyService {
	public int insertData(LikeyListDTO dto);
	
	public List<LikeyListDTO> getAlldata(String member_email);
	
	public int insertLikeyData(LikeyDTO dto);
	
	public List<HomeDTO> getHomeInfoLikey(int likeyList_seq);
	
	public List<LikeyDTO> getLikeyData(String member_email);
	
	public List<LikeyDTO> getLikeyHeart(int home_seq, String member_email);
	
	public LikeyListDTO getLikeyListDTO(int likeyList_seq);
	
	public int removeLikey(int likeyList_seq, int home_seq);
	
	public List<LikeyDTO> getHomePic();
}

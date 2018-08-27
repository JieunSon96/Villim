package kh.spring.interfaces;

import java.util.List;
import java.util.Map;

import kh.spring.dto.GuestReviewDTO;
import kh.spring.dto.HomeDTO;
import kh.spring.dto.HomeDescDTO;
import kh.spring.dto.HomePicDTO;
import kh.spring.dto.HostReviewDTO;
import kh.spring.dto.MessageDTO;
import kh.spring.dto.ReservationDTO;
import kh.spring.dto.MapDTO;

public interface HomeDAO {
	public List<HomeDTO> getAllHomeData(String member_email);
	
	public List<HomeDTO> getAllHomeData();

	public HomeDTO getOldestHomeData();

	public HomeDTO getHomeData(int home_seq);

	public int addHomePicData(HomePicDTO dto);

	public List<HomePicDTO> getHomePicData(int seq);

	public int addHomeRepresentData(String fileName, int seq);

	public int deleteHomePicData(String filename);

	public int deleteHomeMainPicData(String filename, int seq);

	public HomeDescDTO getHomeDescData(int home_seq);

	public int modifyHomeDescData(HomeDescDTO hddto);

	public int modifyTitleHomeData(HomeDTO hdto);

	public int modifyHomeFacSecAccData(HomeDTO hdto);

	public int modifyHomeLocData(HomeDTO hdto);

	public int modifyReserveCheckinData(HomeDTO hdto);

	public int modifyReserveNightData(HomeDTO hdto);

	public int modifyHomeStateData(HomeDTO hdto);

	public int modifyCalendar(HomeDTO hdto);

	public List<String> getCalendarDate(Map<String, String> map);

	public String getBlockedDate(int home_seq);

	public int modifyHomeRulesDetails(HomeDTO hdto);

	public List<ReservationDTO> getAllReservation(String member_email);

	public List<GuestReviewDTO> getAllGuestReview(String member_email);

	public List<HostReviewDTO> getAllHostReview(int home_seq);

	public int guestReviewCount(String member_email);

	public int hostReivewCount(int home_Seq);

	public List<GuestReviewDTO> getSatisfaction();

	public List<GuestReviewDTO> getAccuracy();

	public List<GuestReviewDTO> getCleanLiness();

	public List<GuestReviewDTO> getCheckin();

	public List<GuestReviewDTO> getAmenities();

	public List<GuestReviewDTO> getCommunication();

	public List<GuestReviewDTO> getLocation();

	public List<GuestReviewDTO> getValue();

	public List<MessageDTO> getAllMessage(int home_seq);

	
	//----------------지혜-----------------
	public int updateBlockedDate(String blockedDate,int home_seq);
	
	
//	예지
	public List<HomeDTO> getAllHomeDataMain();
	
	public List<HomeDTO> getHomeOnMap(MapDTO mdto);
	
	public List<HomePicDTO> getHomePic();
	
	
	//1찬연
	public int insertFirstHome(HomeDTO hdto);
	
	public HomeDTO getNewestHomeData();
	
	public int modifyHomeType(HomeDTO hdto);
	
	public int modifyBathbed(HomeDTO hdto);
	
	public int modifyCommodity(HomeDTO hdto);
	
	public int modifyHomepicture(HomeDTO hdto);
	
	public int insertHomeDescData(HomeDescDTO hddto);
	
	public int modifyContents(HomeDTO hdto);
	
	public int modifyHomename(HomeDTO hdto);
	
	public int modifyHomerule(HomeDTO hdto);
	
	public int modifyHomecheck(HomeDTO hdto);
	
	public int modifyHomestay(HomeDTO hdto);
	
	public int modifyHomeblock(HomeDTO hdto);
	
	public int modifyHomeprice(HomeDTO hdto);
}

package kh.spring.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.dto.GuestReviewDTO;
import kh.spring.dto.HomeDTO;
import kh.spring.dto.HomePicDTO;
import kh.spring.dto.HostReviewDTO;
import kh.spring.dto.MemberDTO;
import kh.spring.dto.ReservationDTO;
import kh.spring.dto.ReviewDTO;
import kh.spring.dto.Review_H_DTO;
import kh.spring.interfaces.MemberDAO;
import kh.spring.interfaces.MemberService;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDAO dao;

	
	@Override
	public int signup(MemberDTO dto) {
		
		return dao.signup(dto);
	
	}

	@Override
	public String isMember(MemberDTO dto) {
		
		
		return dao.isMember(dto);
		
		
	}
	@Override
	public String isSnsMember(MemberDTO dto) {
		return dao.isSnsMember(dto);
	}
	
	@Override
	public String isMail(String mail) {
		return dao.isMail(mail);
	}
	
	@Override
	public String getAllMemberCountData() {
		return dao.getAllMemberCountData();
	}
	
	@Override
	public List<MemberDTO> getAllMemberData() {

		return dao.getAllMemberData();
	}
	
	@Override
	public int memberBlock(List<String> arr) {
		
		return dao.memberBlock(arr);
	}





   //--- 여기까지 재호

	
	@Override
	public MemberDTO printProfile(String userId) {
		return dao.printProfile(userId);
	}


	@Override
	public String editProfile(MemberDTO dto) {
		 dao.editProfile(dto);
		return dto.getMember_email();
	}


	@Override
	public int editPhoto(String systemName, String userId) {
		return dao.editPhoto(systemName, userId);
	}


	@Override
	public MemberDTO getPhoto(String userId) {
		return dao.getPhoto(userId);
	}


	@Override
	public int countHouse(String userId) {
		return dao.countHouse(userId);
	}


	@Override
	public List<HomeDTO> getHouse(String userId) {
		return dao.getHouse(userId);
	}


	@Override
	public List<ReservationDTO> getInfo(String userId) {
		return dao.getInfo(userId);
	}


	@Override
	public HomeDTO getHomePhoto(int home_seq) {
		return dao.getHomePhoto(home_seq);
	}


	@Override
	public HomeDTO getMemberEmail(int home_seq) {
		return dao.getMemberEmail(home_seq);
	}

	@Override
	public int insertGuestReview(GuestReviewDTO dto) {
		return dao.insertGuestReview(dto);
	}

	@Override
	public int updateReservation(int home_seq, String member_email) {
		return dao.updateReservation(home_seq, member_email);
	}

	@Override
	public List<ReviewDTO> getGuestReview(String member_email) {
		return dao.getGuestReview(member_email);
	}

	@Override
	public List<Integer> getSeq(String userId) {
		return dao.getSeq(userId);
	}

	@Override
	public List<Review_H_DTO> getHostReview(List<Integer> home_seq) {
		return dao.getHostReview(home_seq);
	}

	@Override
	public List<HostReviewDTO> getRealHostReview(List<Integer> g_review_seq) {
		return dao.getRealHostReview(g_review_seq);
	}

	@Override
	public int insertHostReview(HostReviewDTO dto) {
		return dao.insertHostReview(dto);
	}


	
}


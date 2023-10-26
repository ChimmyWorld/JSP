package service;

import beans.RecommendDTO;
import model.BoardDAO;

public class Recommend {
	public int recPro(RecommendDTO input) {
		BoardDAO dao = new BoardDAO();
		int isCheck = input.getIsCheck();
		int good = input.getGood();
		int row = 0;
		
		if(isCheck == 1) {
			if (good == 1) {
				// delete (추천 취소)
				row = dao.deleteRec(input);
			}
			else {
				// update (추천 -> 비추천)
				row = dao.updateRec(input);
			}
		}
		else if (isCheck ==2) {
			if (good == 1) {
				// update (비추천 -> 추천)
				row = dao.updateRec(input);
			}
			
			else {
				// delete
				row = dao.deleteRec(input);
			}
		}
		else {
			// insert (추천)
			dao.insertRec(input);
		}
		
		return row;
	}
}

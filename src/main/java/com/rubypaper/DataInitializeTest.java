package com.rubypaper;

import com.rubypaper.domain.Board;
import com.rubypaper.domain.Member;
import com.rubypaper.domain.Role;
import com.rubypaper.persistence.BoardRepository;
import com.rubypaper.persistence.MemberRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Date;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DataInitializeTest {

    @Autowired
    private MemberRepository memberRepo;

    @Autowired
    private BoardRepository boardRepo;

    @Test
    public void testDataInput(){
        Member member1 = new Member();
        member1.setId("member1");
        member1.setName("둘리");
        member1.setPassword("member111");
        member1.setRole(Role.ROLE_MEMBER);
        memberRepo.save(member1);

        Member member2 = new Member();
        member2.setId("member2");
        member1.setName("도우너");
        member1.setPassword("member111");
        member1.setRole(Role.ROLE_MEMBER);
        memberRepo.save(member2);

        for(int i=1; i<=3; i++){
            Board board = new Board();
            board.setWriter("둘리");
            board.setTitle("둘리가 등록한 게시글 "+i);
            board.setContent("둘리가 등록한 게시글 내용 " + i);
            board.setCreateDate(new Date());
            board.setCnt(0L);
            boardRepo.save(board);
        }

        for(int i=1; i<=3; i++){
            Board board = new Board();
            board.setWriter("도너");
            board.setTitle("도너가 등록한 게시글 "+i);
            board.setContent("도너가 등록한 게시글 내용 " + i);
            board.setCreateDate(new Date());
            board.setCnt(0L);
            boardRepo.save(board);
        }
    }
}

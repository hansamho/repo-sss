package com.sss.infra.codegroup;

import java.util.List;

public interface CodeGroupDao {
	
	public List<CodeGroupDto> selectList(CodeGroupVo vo);

}

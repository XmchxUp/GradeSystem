package io.github.xmchxup.latticy.vo;

import io.github.xmchxup.latticy.model.StudentDO;
import lombok.Getter;
import lombok.Setter;

/**
 * @author xmchx (sunhuayangak47@gmail.com)
 */
@Getter
@Setter
public class StudentVO extends StudentDO {
	private String className;
	private String collegeName;
	private String majorName;

}

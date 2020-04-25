/**
 * FileName:   HelloController
 * Author:     O了吗
 * Date:       2020/4/21 18:01
 * Description:
 * History:
 * author:     oleolema
 */
package com.nobug.clcdtest.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 〈〉
 *
 * @author O了吗
 * @create 2020/4/21
 * @since 1.0.0
 */
@RestController
@RequestMapping("api")
public class HelloController {

    @GetMapping("hello")
    public String hello() {
        return "hello world success 123 456!!!";
    }

}
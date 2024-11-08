Để thiết lập một ứng dụng Spring Boot tuân thủ chuẩn OpenID Connect (OIDC) và cung cấp endpoint /.well-known/openid-configuration, bạn cần triển khai một Authorization Server. Spring Security hiện hỗ trợ điều này thông qua Spring Authorization Server

<!-- Spring Authorization Server -->
    <dependency>
        <groupId>org.springframework.security</groupId>
        <artifactId>spring-security-oauth2-authorization-server</artifactId>
        <version>0.4.0</version> <!-- Kiểm tra và sử dụng phiên bản mới nhất nếu có -->
    </dependency>

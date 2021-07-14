package vn.nextsol.service;

import java.util.List;

import org.springframework.data.domain.Page;

import vn.nextsol.entity.Banner;

public interface BannerService {
	List<Banner> findAllBanner();

	Page<Banner> getBannerByName(int pageNumber,String sortField,String sortDir,String keyword);
    List<Banner> searchBannerHL();

    Banner findOneBanner(long id);

    void saveBanner(Banner banner);
    void updateBanner(Banner banner);

    void deleteBanner(Banner banner);
    
}

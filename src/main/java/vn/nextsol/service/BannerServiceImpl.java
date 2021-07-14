package vn.nextsol.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import vn.nextsol.entity.Banner;
import vn.nextsol.repository.BannerRepository;

@Service
public class BannerServiceImpl implements BannerService{
 @Autowired
 private BannerRepository bannerRepository;

@Override
public List<Banner> findAllBanner() {
	return bannerRepository.findAll();
}


@Override
public List<Banner> searchBannerHL() {
	return bannerRepository.findBannerHighLight();
}

@Override
public Banner findOneBanner(long id) {
	return bannerRepository.findById(id).get();
}

@Override
public void saveBanner(Banner banner) {
	bannerRepository.saveAndFlush(banner);
}

@Override
public void deleteBanner(Banner banner) {
	bannerRepository.delete(banner);
}


@Override
public Page<Banner> getBannerByName(int pageNumber, String sortField, String sortDir, String keyword) {
	Sort sort=Sort.by(sortField);
	sort=sortDir.equals("asc") ? sort.ascending() : sort.descending();
	
	Pageable pageable =PageRequest.of(pageNumber-1, 8,sort);
	if(keyword!=null) {
		return bannerRepository.findBannerByName(keyword, pageable);
					}
		return bannerRepository.findAll(pageable);
}


@Override
public void updateBanner(Banner banner) {
	bannerRepository.saveAndFlush(banner);
	
}
}


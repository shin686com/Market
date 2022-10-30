package kopo.poly.service.impl;


import kopo.poly.persistance.mapper.IMarketMapper;
import kopo.poly.service.IMarketService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service("MarketService")
@Slf4j
@RequiredArgsConstructor
public class MarketService implements IMarketService {

        private IMarketMapper marketMapper;





}


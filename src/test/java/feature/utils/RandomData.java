package feature.utils;

import java.util.UUID;

import org.apache.commons.lang3.RandomUtils;


public class RandomData {
        private final static String DOMAIN = "@sampletest.com";

        /**
         * @param firstName
         * @param lastName
         * @return random email address
         */
        public String generateRandomEmail(String firstName, String lastName) {
            return firstName + lastName + generateUUID().substring(0,12) + DOMAIN;
        }

        /**
         * @return uuids without hyphens
         * @return
         */
        public String generateUUID(){
            return UUID.randomUUID().toString().replaceAll("\\-", "");
        }

        /**
         * @param string
         * @param startingIndex
         * @param endIndex
         * @return substring 
         */
        public String getSubString(String string, int startingIndex, int endIndex ){
            return string.substring(startingIndex,endIndex);
        }

        /**
         * @param startingValue
         * @param endValue
         * @return random value based on given range
         */

         public String randomValue(double startingValue, double endValue){
            Long num = Math.round(RandomUtils.nextDouble(startingValue,endValue));
            return Long.toString(num);
         }
}

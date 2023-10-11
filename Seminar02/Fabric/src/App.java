import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

import Fabric.AdamantineGenerator;
import Fabric.ArtefactsGenerator;
import Fabric.EmeraldGenerator;
import Fabric.GemGenerator;
import Fabric.GoldGenerator;
import Fabric.ItemGenerator;
import Fabric.RubyGenerator;
import Fabric.SilverGenerator;
import Fabric.TitanGenerator;

public class App {
    public static void main(String[] args) throws Exception {
        // Создаём индивидуально каждый генератор (3 шт.):
        /* ----------------------------------------------- */
        // ItemGenerator goldFactory1 = new GoldGenerator();
        // goldFactory1.openReward();

        // ItemGenerator silverFactory1 = new SilverGenerator();
        // silverFactory1.openReward();

        // ItemGenerator gemFactory1 = new GemGenerator();
        // gemFactory1.openReward();

        // Создаём список генераторов:
        /* ---------------------------------------------------- */
        List<ItemGenerator> rewardGenerators = new ArrayList<>();

        // Добавляем сгенерированные награды в список
        /* ---------------------------------------------------- */
        // rewardGenerators.add(new GoldGenerator());
        // rewardGenerators.add(new SilverGenerator());
        // rewardGenerators.add(new GemGenerator());

        // и выводим их работу в цикле:
        /* ---------------------------------------------------- */
        // for (ItemGenerator itemGenerator : rewardGenerators) {
        // itemGenerator.openReward();
        // }

        // или выводим случайным порядком любой из трёх, но всего 10 раз:
        /* ----------------------------------------------------- */
        // Random rnd = new Random();
        // for (int i = 0; i < 10; i++) {
        // rewardGenerators.get(rnd.nextInt(rewardGenerators.size())).openReward();
        // }

        // Для управлением частотой выпадания той или иной награды, просто сгенерируем
        // количество фабрик в нужной пропорции (Допустим, 10 серебра, 5 золота и 2
        // драгоценных камня):

        for (int i = 0; i < 10; i++) {
            rewardGenerators.add(new SilverGenerator());
        }

        for (int i = 0; i < 5; i++) {
            rewardGenerators.add(new GoldGenerator());
        }

        for (int i = 0; i < 2; i++) {
            rewardGenerators.add(new GemGenerator());
        }

        for (int i = 0; i < 4; i++) {
            rewardGenerators.add(new RubyGenerator());
        }

        for (int i = 0; i < 3; i++) {
            rewardGenerators.add(new EmeraldGenerator());
        }

        for (int i = 0; i < 2; i++) {
            rewardGenerators.add(new ArtefactsGenerator());
        }

        for (int i = 0; i < 6; i++) {
            rewardGenerators.add(new TitanGenerator());
        }

        for (int i = 0; i < 5; i++) {
            rewardGenerators.add(new AdamantineGenerator());
        }

        // Перемешиваем коллекцию наград:
        Collections.shuffle(rewardGenerators);

        // Выведем случайным образом награды. Количество попыток
        // равно количеству наград в списке.
        Random rnd = new Random();
        for (int i = 0; i < rewardGenerators.size(); i++) {
            rewardGenerators.get(rnd.nextInt(rewardGenerators.size())).openReward();
        }
    }
}

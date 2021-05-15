package hw3;

public class CampaignManager implements BaseCampaignManager {

	@Override
	public void add(Campaign campaign) {
		System.out.println(campaign.getName() + " added");

	}

	@Override
	public void update(Campaign campaign) {
		System.out.println(campaign.getName() + " updated");

	}

	@Override
	public void delete(Campaign campaign) {
		System.out.println(campaign.getName() + " deleted");

	}

}
